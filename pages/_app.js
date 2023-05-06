import role from '@/app/api/role/role'
import '@/styles/globals.css'
import { useRouter } from 'next/router'
import { createContext, useEffect, useState } from 'react'
import "react-calendar/dist/Calendar.css";


export const AppContext= createContext()
export default function App({ Component, pageProps }) {
  const [auth, setAuth]= useState()
  const [user, setUser]= useState()
  const router= useRouter()
  useEffect(()=> {
    (async ()=> {
      const result= await role()
      if(result?.login === true ) {
        setUser(result)
        if(result.data?.role=== 1) {
          router.push("/student")
        }
        else if(result?.data?.role===2) {
          router.push("/teacher")
        }
        else if(result?.data?.role===3) {
          router.push("/admin")
        }
        setAuth(true)
      }
      else {
        setAuth(false)
      }
    })()
  }, [])
  return <AppContext.Provider value={{auth}}>
    <div>
    <Component {...pageProps} />
  </div>
  </AppContext.Provider>
}
