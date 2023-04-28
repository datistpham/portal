import role from '@/app/api/role/role'
import '@/styles/globals.css'
import { useRouter } from 'next/router'
import { useEffect, useState } from 'react'

export default function App({ Component, pageProps }) {
  const [auth, setAuth]= useState()
  const [user, setUser]= useState()
  const router= useRouter()
  useEffect(()=> {
    (async ()=> {
      const result= await role()
      if(result?.login === true ) {
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
  return <div>
    <Component {...pageProps} />
  </div>
}
