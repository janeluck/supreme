function a(x,y,z){
    z = z||99
    console.log(x,y,z)
}

b = a.bind(this,0,1)

b()