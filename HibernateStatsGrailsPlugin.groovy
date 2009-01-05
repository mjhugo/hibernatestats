import org.springframework.jmx.support.MBeanServerFactoryBean
import org.springframework.jmx.export.MBeanExporter
import org.hibernate.jmx.StatisticsService

class HibernateStatsGrailsPlugin {
    def version = 1.0
	def loadAfter = ['hibernate']

    def author = "Mike Hugo"
    def authorEmail = "mike@piragua.com"
    def title = "Enables Hibernate Statistics capture and exposes an MBean"
    def description = '''\\
Enables capturing of Hibernate Statistics and provides a Controller and View to view stats
'''

    // URL to the plugin's documentation
    def documentation = "http://grails.org/HibernateStats+Plugin"

    def doWithSpring = {
		//from http://grails.org/MBean+export+the+Groovy+way
		hibernateStats(StatisticsService) {
			statisticsEnabled=true
			sessionFactory=ref("sessionFactory")
		}  
	
		//second bean definition		
		mbeanServer(MBeanServerFactoryBean) {
			locateExistingServerIfPossible=true
		}
	
		//third bean definition
		exporter(MBeanExporter) {
			server = mbeanServer
			beans = ["org.hibernate:name=statistics":hibernateStats]
		}
    }

    def doWithApplicationContext = { applicationContext ->
        applicationContext.getBean('sessionFactory').statistics.statisticsEnabled = false
    }

    def doWithWebDescriptor = { xml ->
        // TODO Implement additions to web.xml (optional)
    }

    def doWithDynamicMethods = { ctx ->
        // TODO Implement registering dynamic methods to classes (optional)
    }

    def onChange = { event ->
        // TODO Implement code that is executed when any artefact that this plugin is
        // watching is modified and reloaded. The event contains: event.source,
        // event.application, event.manager, event.ctx, and event.plugin.
    }

    def onConfigChange = { event ->
        // TODO Implement code that is executed when the project configuration changes.
        // The event is the same as for 'onChange'.
    }
}
