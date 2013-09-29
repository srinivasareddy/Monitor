package monitor



import org.junit.*
import grails.test.mixin.*

@TestFor(MachineFeedController)
@Mock(MachineFeed)
class MachineFeedControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/machineFeed/list" == response.redirectedUrl
    }

    void testList() {
		
        def model = controller.list()

        assert model.machineFeedInstanceList.size() == 0
        assert model.machineFeedInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.machineFeedInstance != null
    }

    void testSave() {
        controller.save()

        assert model.machineFeedInstance != null
        assert view == '/machineFeed/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/machineFeed/show/1'
        assert controller.flash.message != null
        assert MachineFeed.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/machineFeed/list'

        populateValidParams(params)
        def machineFeed = new MachineFeed(params)

        assert machineFeed.save() != null

        params.id = machineFeed.id

        def model = controller.show()

        assert model.machineFeedInstance == machineFeed
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/machineFeed/list'

        populateValidParams(params)
        def machineFeed = new MachineFeed(params)

        assert machineFeed.save() != null

        params.id = machineFeed.id

        def model = controller.edit()

        assert model.machineFeedInstance == machineFeed
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/machineFeed/list'

        response.reset()

        populateValidParams(params)
        def machineFeed = new MachineFeed(params)

        assert machineFeed.save() != null

        // test invalid parameters in update
        params.id = machineFeed.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/machineFeed/edit"
        assert model.machineFeedInstance != null

        machineFeed.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/machineFeed/show/$machineFeed.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        machineFeed.clearErrors()

        populateValidParams(params)
        params.id = machineFeed.id
        params.version = -1
        controller.update()

        assert view == "/machineFeed/edit"
        assert model.machineFeedInstance != null
        assert model.machineFeedInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/machineFeed/list'

        response.reset()

        populateValidParams(params)
        def machineFeed = new MachineFeed(params)

        assert machineFeed.save() != null
        assert MachineFeed.count() == 1

        params.id = machineFeed.id

        controller.delete()

        assert MachineFeed.count() == 0
        assert MachineFeed.get(machineFeed.id) == null
        assert response.redirectedUrl == '/machineFeed/list'
    }
}
