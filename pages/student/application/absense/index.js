import * as React from "react";
import Box from "@mui/material/Box";
// import { DataGrid, GridColDef, GridValueGetterParams } from "@mui/x-data-grid";
// import axios from "axios";
// import UpdateStudent from "./Component/UpdateStudent";
import { DeleteOutlined } from "@ant-design/icons";
// import { Button } from "@mui/material";
import Student from "../..";
import get_profile_student from "@/app/api/student/get_profile";
import Cookies from "js-cookie";
const StudentProfile = () => {
  return (
    <Student>
      <div style={{ flex: "1 1 0", height: "100vh", overflow: "auto" }}>
        <StudentData />
      </div>
    </Student>
  );
};

function StudentData() {
  const [data, setData] = React.useState([]);
  const [change, setChange] = React.useState(false);
  React.useEffect(() => {
    (async () => {
      // uid teacher
      const result= await get_profile_student(Cookies.get("uid"))
      return setData(result[0])
    })();
  }, [change]);

  return (
    <Box sx={{ height: 400, width: "100%", padding: 1}}>
    </Box>
  );
}

export default StudentProfile;
