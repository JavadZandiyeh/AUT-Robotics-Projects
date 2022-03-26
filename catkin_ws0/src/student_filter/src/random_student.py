#!/usr/bin/python3

from student_filter.msg import Student
from random import randint, seed, choice
from time import time
import rospy

def randName():
    global names
    return choice(names)

def randLName():
    global lName
    return choice(lNames)


def randAge():
    return randint(20,70)


def randDepartement():
    global departements
    return choice(departements)


def randStudent():
    seed(time())
    student = Student()
    student.name = randName()
    student.age = randAge()

    student.last_name = randLName()
    student.departement = randDepartement()

    return student


names = [
    'Ali',
    "Mohammad",
    "Fatemeh",
    "Amir",
    "Reza",
    "Sahar",
    "Aref",
    "Aria",
    "Ahmad",
    "Akbar",
    "Mohammad Reza",
    "Amir Hosein",
    "Saman",
    "Mohsen",
    "Radin",
    "Maryam",
    "Javad",
    "Ramin",
    "Soroush",
    "Farhad",
    "Siamak",
    "Mehran",
    "Karim",
]

lNames = [
    'Akbari',
    'Hashemi',
    "Ghasemi",
    "Hoseini",
    "Eslami",
    "Kazemi",
    "Kashfi",
    "Shahi",
    "Sheikhi",
    "Kabiri",
    "Majidi",
    "Karimi",
    "Ghafori",
    "Pormokhber",
    "Ansari",
    "Modiri",
    "Fallah",
    "Ansarifard",
]


departements= [
    "Software",
    "Hardware",
]


def student_request():
    # publishing topic: std_request 
    # publishing topic/message type: Student
    # publishing topic queue size: 10
    pub = rospy.Publisher('std_request', Student, queue_size=10)
    
    # node: student_request
    rospy.init_node('student_request', anonymous=True)
    
    # rate of sleep: 1 second
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        # message: student
        student = randStudent()
        
        rospy.loginfo('Info students:\n name: {}\n age: {}\n' .format(student.last_name, student.departement))
        
        # publishing "student" message under "std_request" topic
        pub.publish(student)

        rate.sleep()

if __name__ == '__main__':
    try:
        student_request()
    except rospy.ROSInterruptException:
        pass