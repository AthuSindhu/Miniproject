from flask import Flask, render_template,request,session,jsonify
from DBConnection import Db

app = Flask(__name__)
app.secret_key="hii"

@app.route("/")
def login():
    return render_template("login_temp.html")

@app.route("/login_post",methods=['post'])
def login_post():
    Username=request.form['textfield']
    Password=request.form['textfield2']
    db=Db()
    qry="SELECT * FROM login WHERE username='"+Username+"' AND PASSWORD='"+Password+"'"
    print(qry)
    res=db.selectOne(qry)
    if res is not None:
        session['lid'] = res['login_id']
        if res["type"]=="admin":
            return "<script>alert('success');window.location='/adminhome';</script>"
        elif res["type"]=="student":
            return render_template("Home.html")
        else:
            return "Invalid"
    else:

        return "<script>alert('Invalid details');window.location='/';</script>"
@app.route('/adminhome')
def adminhome():
    return render_template('admin/Home.html')
@app.route("/admView_allstu")
def admView_allstu():
    q="select * from student"
    d=Db()
    res=d.select(q)
    return render_template("admin/view_all_students.html",data=res)
@app.route("/admView_stu_marks/<ulid>")
def admView_stu_marks(ulid):
    q="select * from scrore_board where ulid='"+ulid+"'"
    d=Db()
    res=d.select(q)
    return render_template("admin/Result.html",data=res)

#------------------

@app.route('/Add_course')
def Add_course():
    db=Db()
    qry="select * from department"
    res=db.select(qry)
    return render_template('Admin/Add_Course.html',data=res)
@app.route('/Add_Course_post',methods=['post'])
def Add_Course_post():
    deptname=request.form['select']
    coursename=request.form['textfield']
    db=Db()
    qry="INSERT INTO course(course_name,Dept_id)VALUES('"+coursename+"','"+deptname+"')"
    db.insert(qry)


    return Add_course()
@app.route('/View_course')
def View_course():
    q="select department.*,course.* from department inner join course on course.Dept_id=department.Dept_id"
    d=Db()
    res=d.select(q)

    qry2 = "select * from department"
    res2 = d.select(qry2)
    return render_template('Admin/View_Course.html',data=res,dept=res2)
@app.route('/View_course_search',methods=["post"])
def View_course_search():
    dep=request.form["select"]
    q="select department.*,course.* from department inner join course on course.Dept_id=department.Dept_id where course.Dept_id='"+dep+"'"
    d=Db()
    res=d.select(q)

    qry2 = "select * from department"
    res2 = d.select(qry2)
    return render_template('Admin/View_Course.html',data=res,dept=res2)

@app.route('/delete_course/<id>')
def delete_course(id):
    q="delete from course where Course_id='"+id+"'"
    d=Db()
    res=d.delete(q)
    return View_course()
@app.route('/Add_Department')
def Add_Department():
    return render_template('Admin/Add_Department.html')
@app.route('/Add_Department_post',methods=['post'])
def Add_Department_post():
    deptname=request.form['textfield']
    db=Db()
    qry="INSERT INTO department (Dept_name)VALUES('"+deptname+"')"
    db.insert(qry)
    return Add_Department()
@app.route('/view_dept')
def view_dept():
    q="select * from department"
    d=Db()
    res=d.select(q)
    return render_template('Admin/View_Department.html',data=res)
@app.route('/view_dept_delete/<id>')
def view_dept_delete(id):
    q="delete from department where Dept_id='"+id+"'"
    d=Db()
    res=d.delete(q)
    return view_dept()
@app.route('/Add_Question')
def Add_Question():
    return render_template('Admin/Add_Question.html',res="")
@app.route('/Add_Question_post',methods=['post'])
def Add_Question_post():
    question=request.form['textfield']
    opta=request.form['textfield6']
    optb=request.form['textfield2']
    optc=request.form['textfield3']
    optd=request.form['textfield4']
    crrctanswer=request.form['textfield5']

    # from  checking import placement
    # placem=placement()
    # result=placem.pred(question)
    result=request.form["level"]

    db=Db()
    qry="insert into question(Question,Answer,Difficulty_level,Option1,Option2,Option3,Option4) values('"+question+"','"+crrctanswer+"','"+result+"','"+opta+"','"+optb+"','"+optc+"','"+optd+"')"
    db.insert(qry)
    return render_template('Admin/Add_Question.html',res=result)

@app.route('/view_question')
def view_question():
    q="select * from question"
    d=Db()
    res=d.select(q)
    return render_template('Admin/View_Question.html',data=res)
@app.route('/delete_questions/<id>')
def delete_questions(id):
    q="delete from question where Q_id='"+id+"'"
    d=Db()
    d.delete(q)
    return view_question()
@app.route('/Add_Student')
def Add_Student():
    db=Db()
    qry="select * from course"
    res=db.select(qry)
    return render_template('Admin/Add_Student.html',data=res)
@app.route('/Add_Student_post',methods=['post'])
def Add_Student_post():
    name=request.form['textfield']
    course=request.form['select']
    sem=request.form['select2']
    admno=request.form['textfield2']
    dob=request.form['textfield3']
    email=request.form['textfield4']
    phone=request.form['textfield5']
    qry="INSERT INTO login(username,password,type)VALUES('"+email+"','"+phone+"','Student')"
    db=Db()
    lid=db.insert(qry)
    qry1="INSERT INTO student(s_name,course_id,Semester,Adm_no,s_email,s_phone,s_dob,lid) VALUES" \
                            "('"+name+"','"+course+"','"+sem+"','"+admno+"','"+email+"','"+phone+"','"+dob+"','"+str(lid)+"')"
    db.insert(qry1)
    return Add_Student()
@app.route('/view_student')
def view_student():
    q="select student.*,course.* from student inner join course on student.Course_id=course.Course_id"
    d=Db()
    res=d.select(q)

    qry2 = "select * from course"
    res2 = d.select(qry2)
    return render_template('Admin/View_Student.html',data=res,course=res2)

@app.route('/view_student_post',methods=["post"])
def view_student_post():

    cid=request.form["cid"]
    q="select student.*,course.* from student inner join course on student.Course_id=course.Course_id where student.Course_id='"+cid+"'"
    d=Db()
    res=d.select(q)

    qry2 = "select * from course"
    res2 = d.select(qry2)
    return render_template('Admin/View_Student.html',data=res,course=res2)

@app.route('/delete_student/<id>')
def delete_student(id):
    q="delete from student where lid='"+id+"'"
    d=Db()
    res=d.delete(q)
    return view_student()


@app.route('/view_complaints')
def view_complaints():
    q="select student.s_name,student.s_email,complaint.* from complaint inner join student on student.lid=complaint.s_id"
    d=Db()
    res=d.select(q)
    return render_template('admin/View_Complaint.html',data=res)
@app.route('/sendreply/<cid>')
def sendreply(cid):
    return render_template('admin/Send_Reply.html',cid=cid)
@app.route('/Sendreply_post',methods=["post"])
def Sendreply_post():
    cid=request.form['cid']
    reply=request.form["textarea"]
    q="update complaint set Reply='"+reply+"' , Status='replied' where Complaint_id='"+cid+"'"
    d=Db()
    d.update(q)
    return view_complaints()
#-----------------------------------------------------------------------------------

@app.route("/std_change")
def change():
    return render_template("Change Password.html")

@app.route("/std_change_post",methods=['post'])
def change_post():
    current_pswd=request.form['textfield']
    new_pswd=request.form['textfield2']
    confirm_pswd = request.form['textfield3']
    return 'OK'

@app.route("/View_profile")
def profile():
    q = "select student.*,course.* from student inner join course on student.Course_id=course.Course_id where student.lid='" + str(session['lid']) + "'"
    d = Db()
    res = d.selectOne(q)
    return render_template("View_profile.html",data=res)


@app.route("/Send_complaint")
def Send_complaint():
    return render_template("Send_complaint.html")

@app.route("/Send_complaint_post",methods=['post'])
def complaint_post():
    complaint=request.form['textarea']
    lid=session['lid']
    q="insert into complaint(Comp_Date,s_id,Complaint,Reply,Status)values(curdate(),'"+str(lid)+"','"+complaint+"','pending','pending')"
    d=Db()
    d.insert(q)
    return Send_complaint()
@app.route("/View_reply")
def reply():
    q="select * from complaint where s_id='"+str(session["lid"])+"'"
    d=Db()
    res=d.select(q)
    return render_template("View_reply.html",data=res)

@app.route("/Home")
def home():
    return render_template("Home.html")


@app.route("/Levels")
def levels():
    return render_template("Levels.html",ulid=session["lid"])

@app.route("/Levels_post",methods=['post'])
def Levels_post():
    Levels=request.form['Levels']
    qry="SELECT * FROM question WHERE Difficulty_level='"+Levels+"'"
    db=Db()
    res=db.select(qry)
    print(res)
    levelcount=0
    if(Levels=="Knowledge"):
        levelcount=1
    elif Levels=="Comprehension":
        levelcount=2
    elif Levels=="Application":
        levelcount=3
    elif Levels=="Analysis":
        levelcount=4
    elif Levels=="Article":
        levelcount=5
    elif Levels=="Synthesis":
        levelcount=6
    elif Levels=="Evaluation":
        levelcount=7
    qry="SELECT MAX(mark) as maxmark,ulid FROM `scrore_board` WHERE `level`='"+str(levelcount)+"'"
    print(qry)
    maxres=db.selectOne(qry)
    maxmark=0
    username="no user"
    if maxres is not None:

        qry2="SELECT s_name FROM student WHERE lid ='"+str(maxres["ulid"])+"'"
        print(qry2)
        user=db.selectOne(qry2)
        if user is not None:

            maxmark=maxres["maxmark"]
            username=user["s_name"]
    return jsonify(status="ok",data=res,ulid=session["lid"],maxmark=maxmark,uname=username)

@app.route("/scrore_insert",methods=['post'])
def scrore_insert():
    ulid=request.form['ulid']
    mark=request.form['mark']
    level=request.form['level']
    status=request.form['status']
    qry="insert into scrore_board(ulid,mark,level,date,status_level)values('"+ulid+"','"+mark+"','"+level+"',curdate(),'"+status+"')"
    db=Db()
    res=db.insert(qry)
    print(res)
    return jsonify(status="ok")

@app.route("/logout")
def logout():
    return render_template("login.html")








if __name__ == '__main__':
    app.run(debug=True)