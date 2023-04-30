import axios from "axios"

const get_profile_teacher = async (teacher_id)=> {
    const res= await axios({
        url: "/api/v2/teacher/profile",
        method: "get",
        params: {
            teacher_id
        }
    })
    const result= await res.data
    return result
}

export default get_profile_teacher 