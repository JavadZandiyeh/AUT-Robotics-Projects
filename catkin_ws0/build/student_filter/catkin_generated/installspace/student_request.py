#!/usr/bin/python3

from student_filter.msg import Student
import rospy
import student_filter.src.random_student as random_student

# student_request node
def student_request():
    
    # topic: std_request 
    # topic/message type: Student
    # topic queue size: 10
    pub = rospy.Publisher('std_request', Student, queue_size=10)
    
    # node: student_request
    rospy.init_node('student_request', anonymous=True)
    
    # rate of sleep: 1 second
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        # message: student
        # student = random_student.randStudent()
        
        rospy.loginfo('Info students:\n name:\t\t{}\n ege:\t\t{}\n' .format('student.name', 'student.age'))
        
        # publishing student message under std_request topic
        # pub.publish('student')

        rate.sleep()

if __name__ == '__main__':
    try:
        student_request()
    except rospy.ROSInterruptException:
        pass