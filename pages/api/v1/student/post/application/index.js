import connection from "@/pages/api/connect"
import moment from "moment"

const handler= async (req, res)=> {
    if(req.method=== "POST") {
        try {
            const {class_id, content, startDate, endDate, file_attach, student_id}= req.body
            const [rows]= await connection.execute("INSERT INTO absense_application(student_id, class_id, content, attach_file, time_absense, time_created, status) VALUES(?, ?, ?, ?, ?, ?, ?)", [student_id, class_id, content, file_attach, Math.abs(moment(startDate, "DD-MM-YYYY").diff(moment(endDate, "DD-MM-YYYY"), "days")), new Date(), 0])
            return res.status(200).json({add: true})
        } catch (error) {
            return res.status(500).json(error)
        }
    }
}

export default handler