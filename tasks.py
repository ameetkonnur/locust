#!/usr/bin/env python

from locust import HttpLocust, TaskSet, task, between

class UserBehavior(TaskSet):
    @task(1)
    def login(self):
        self.client.get('/')

class MetricsLocust(HttpLocust):
    task_set = UserBehavior
    wait_time = between (5,9)