import * as React from "react";
import Box from "@mui/material/Box";
// import { DataGrid, GridColDef, GridValueGetterParams } from "@mui/x-data-grid";
// import axios from "axios";
// import UpdateStudent from "./Component/UpdateStudent";
// import { DeleteOutlined } from "@ant-design/icons";
// import swal from "sweetalert";
// import { Button } from "@mui/material";
// import get_student_homeroom from "@/app/api/teacher/get_student_homeroom";
// import Cookies from "js-cookie";
import { useRouter } from "next/router";
import get_student_in_class from "@/app/api/get_student_in_class";
import Teacher from "@/pages/teacher";
import moment from "moment";
const TeacherManageStudents = () => {
  return (
    <Teacher>
      <div style={{ flex: "1 1 0", height: "100vh", overflow: "auto" }}>
        <StudentData />
      </div>
    </Teacher>
  );
};

function StudentData() {
  
  const [data, setData] = React.useState([]);
  const [change, setChange] = React.useState([]);
  const router= useRouter()
  const {id, course_id }= router.query
//   console.log(id)
  React.useEffect(() => {
    (async () => {
      // uid teacher
      if(id) {
        const result= await get_student_in_class(id)
        setData(result);
      }
    })();
  }, [change, id]);

  return (
    <Box sx={{ width: "100%" }}>
      <div></div>
      <br />
      <div></div>
      <div style={{width: "100%"}}>
        <div style={{width: "100%", display: "flex", justifyContent: "center", alignItems: "center"}}>
            {/* {
                Array.from(Array(7).keys())?.map(item=> <div key={item}>{moment(new Date()).sub}</div>)
            } */}
        </div>
      </div>
    </Box>
  );
}

export default TeacherManageStudents;
