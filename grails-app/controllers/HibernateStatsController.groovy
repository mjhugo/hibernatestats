package com.piragua.hibernate.stat

class HibernateStatsController {

	def sessionFactory

    def index = { redirect(action:stats,params:params) }

	def turnOff = {
		sessionFactory.statistics.statisticsEnabled = false
		redirect(action:stats)
	}

	def turnOn = {
		sessionFactory.statistics.statisticsEnabled = true
		flash.message="Hibernate statistics have been enabled"
		redirect(action:stats)
	}

	def clear = {
		sessionFactory.statistics.clear()
		flash.message="Hibernate statistics have been cleared"
		redirect(action:stats)
	}

	def stats = {
		println sessionFactory.statistics
		[statistics: sessionFactory.statistics]
	}
	
}
