#!/usr/bin/python3

from student_filter.msg import Student
import rospy

def callback(data):
    rospy.loginfo('Student Info:\n name: {}\n last_name: {}\n age: {}\n departement: {}\n'.format(data.name,\
        data.last_name, data.age, data.departement))

def hardware():
    # node: hardware
    rospy.init_node('hardware', anonymous=True)

    # subscribing topic: hardware
    rospy.Subscriber('hardware', Student, callback)
    # loop
    rospy.spin()

if __name__ == '__main__':
    try:
        hardware()
    except rospy.ROSInterruptException:
        pass