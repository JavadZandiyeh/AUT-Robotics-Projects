#!/usr/bin/python3

from student_filter.msg import Student
import rospy

def callback(data):
    rospy.loginfo('Student Info:\n name: {}\n last_name: {}\n age: {}\n departement: {}\n'.format(data.name,\
        data.last_name, data.age, data.departement))

def software():
    # node: software
    rospy.init_node('software', anonymous=True)

    # subscribing topic: software
    rospy.Subscriber('software', Student, callback)
    # loop
    rospy.spin()

if __name__ == '__main__':
    try:
        software()
    except rospy.ROSInterruptException:
        pass