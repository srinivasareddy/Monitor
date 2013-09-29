package monitor

import java.awt.List;

import org.springframework.dao.DataIntegrityViolationException

import grails.plugins.springsecurity.Secured;
@Secured(['ROLE_ADMIN','ROLE_SUPER_USER'])
class MachineFeedController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def springSecurityService
	
    def index() {
        redirect(action: "list", params: params)
    }

	
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		User authUser = springSecurityService.getCurrentUser()
		def machines = Machine.findByUser(authUser)
		def machineFeeds = []
		machines.each() {
			machineFeeds.add(MachineFeed.findByMachine(it,[max: 1, sort: "feedDate", order: "desc"]))
		}
        [machineFeedInstanceList: machineFeeds.toList(), machineFeedInstanceTotal: machineFeeds.size()]
    }

    def create() {
        [machineFeedInstance: new MachineFeed(params)]
    }

    def save() {
        def machineFeedInstance = new MachineFeed(params)
        if (!machineFeedInstance.save(flush: true)) {
            render(view: "create", model: [machineFeedInstance: machineFeedInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), machineFeedInstance.id])
        redirect(action: "show", id: machineFeedInstance.id)
    }

    def show(Long id) {
        def machineFeedInstance = MachineFeed.get(id)
        if (!machineFeedInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), id])
            redirect(action: "list")
            return
        }

        [machineFeedInstance: machineFeedInstance]
    }

    def edit(Long id) {
        def machineFeedInstance = MachineFeed.get(id)
        if (!machineFeedInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), id])
            redirect(action: "list")
            return
        }

        [machineFeedInstance: machineFeedInstance]
    }

    def update(Long id, Long version) {
        def machineFeedInstance = MachineFeed.get(id)
        if (!machineFeedInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (machineFeedInstance.version > version) {
                machineFeedInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'machineFeed.label', default: 'MachineFeed')] as Object[],
                          "Another user has updated this MachineFeed while you were editing")
                render(view: "edit", model: [machineFeedInstance: machineFeedInstance])
                return
            }
        }

        machineFeedInstance.properties = params

        if (!machineFeedInstance.save(flush: true)) {
            render(view: "edit", model: [machineFeedInstance: machineFeedInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), machineFeedInstance.id])
        redirect(action: "show", id: machineFeedInstance.id)
    }

    def delete(Long id) {
        def machineFeedInstance = MachineFeed.get(id)
        if (!machineFeedInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), id])
            redirect(action: "list")
            return
        }

        try {
            machineFeedInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'machineFeed.label', default: 'MachineFeed'), id])
            redirect(action: "show", id: id)
        }
    }
}
