import connection from "@/pages/api/connect"
import moment from "moment"

const handler= async (req, res)=> {
    if(req.method=== "POST") {
        try {
            const {student_id, class_id, attendance }= req.body
            const [rows1]= await connection.execute("SELECT * FROM attendance WHERE student_id= ? AND class_id= ? ", [student_id, class_id])
            if(rows1.length > 0) {
                const [rows]= await connection.execute("UPDATE attendance SET attendance= ? WHERE student_id= ? AND class_id= ? AND time_attendance= ?", [attendance, student_id, class_id, moment(new Date()).format("DD-MM-YYYY")])
                return res.status(200).json({attendance: attendance})
            }
            else {
                const [rows]= await connection.execute("INSERT INTO attendance(student_id, class_id, attendance, time_attendance) VALUES(?, ?, ?, ?)", [student_id, class_id, attendance, moment(new Date()).format("DD-MM-YYYY")])
                return res.status(200).json({attendance: attendance})

            }
            
        } catch (error) {
            return res.status(500).json(error)
        }
    }
}

export default handler