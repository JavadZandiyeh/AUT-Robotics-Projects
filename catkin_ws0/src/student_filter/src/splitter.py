#!/usr/bin/python3

from student_filter.msg import Student
import rospy

def callback(data):
    if data.departement == 'Hardware':
        hardware_pub.publish(data)      
    elif data.departement == 'Software':
        software_pub.publish(data)

def splitter():
    # node: splitter
    rospy.init_node('splitter', anonymous=True)

    # subscribing topic: std_request
    rospy.Subscriber('std_request', Student, callback)
    # loop
    rospy.spin()

if __name__ == '__main__':
    try:
        # publishing topic: hardware
        # publishing topic/message type: Student
        # publishing topic queue size: 10
        hardware_pub = rospy.Publisher('hardware', Student, queue_size=10)

        # publishing topic: software
        # publishing topic/message type: Student
        # publishing topic queue size: 10
        software_pub = rospy.Publisher('software', Student, queue_size=10)

        splitter()
    except rospy.ROSInterruptException:
        pass