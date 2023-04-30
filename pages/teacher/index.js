import {
    ContainerOutlined,
    MenuFoldOutlined,
    PieChartOutlined,
    MenuUnfoldOutlined,
  } from "@ant-design/icons";
  import { Button, Menu } from "antd";
  import { createContext, useEffect, useState } from "react";
  import Link from "next/link";
  import Header from "@/component/Header";
import get_class_homeroom from "@/app/api/teacher/get_class_homeroom";
import Cookies from "js-cookie";
  
  function getItem(label, key, icon, children, type) {
    return {
      key,
      icon,
      children,
      label,
      type,
    };
  }
  const items = [
    getItem(
      <Link href="/teacher/profile">Profile</Link>,
      "6",
      <PieChartOutlined />
    ),
    getItem(
      <Link href="/teacher/student">Manage students</Link>,
      "1",
      <PieChartOutlined />
    ),
    getItem(
      <Link href="/teacher/score">Manage scores</Link>,
      "2",
      <ContainerOutlined />
    ),
    getItem(
      <Link href="/teacher/attendance">Manage attendance</Link>,
      "4",
      <ContainerOutlined />
    ),
    ,
    getItem(
      <Link href="/teacher/application">Manage applications</Link>,
      "5",
      <ContainerOutlined />
    ),
  ];
  export const TeacherContext= createContext()
  const Teacher = ({ children }) => {
    const [selected, setSelected] = useState(1);
    const [collapsed, setCollapsed] = useState(false);
    const [homeRoom, setHomeRoom]= useState()
    useEffect(()=> {
      (async ()=> {
        const result= await get_class_homeroom(Cookies.get("uid"))
        if(result[0]?.class_id) {
          return setHomeRoom(result[0]?.class_id)
        }
      })()
    }, [])
    const toggleCollapsed = () => {
      setCollapsed(!collapsed);
    };
    return (
     <TeacherContext.Provider value={{homeRoom}}>
      <Header />
       <div style={{ width: "100%", display: "flex", height: "100vh" }}>
              
        <div
          style={{
            maxWidth: 256,
          }}
        >
          <Button
            type="primary"
            onClick={toggleCollapsed}
            style={{
              marginBottom: 16,
            }}
          >
            {collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
          </Button>
          <Menu
            onClick={(e) => setSelected(e.key)}
            selectedKeys={selected}
            defaultOpenKeys={["sub1"]}
            mode="inline"
            theme="light"
            inlineCollapsed={collapsed}
            items={items}
          />
        </div>
        {children || ""}
      </div>
     </TeacherContext.Provider>
    );
  };
  export default Teacher;
 