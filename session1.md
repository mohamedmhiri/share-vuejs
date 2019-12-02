# Session 1

In this session, we are going to:
- consume nasa [api](https://api.nasa.gov/techport/api/projects?api_key=2rwIjmlHfrfjtggTvKsp9b4wEwKe7s83iha6EGdX)
- display properly the api result in a vuejs app

## create a new vuejs app
```
vue create session1
cd session1
npm i
code .
npm i -S axios
```

then create a new component under `src/components` folder, name it `projects.vue` and paste this code inside it

```html
<template lang="html">
  <div>
    <div id="cont">bottone</div>

      <div id="cont2">
        <div>
          Hover <i class="fa fa-angle-down"></i>
        </div>

      </div>

      <div id="cont3">
        <div>
          <u>Leggi di più</u> <i class="fa fa-angle-right"></i>
        </div>

      </div>
      <span id="firma">by Federico</span>
      <div class="container" style="margin-bottom:30px;">
        <div class="row">
          <div class="col-md-3">
            <div id="cont4" class="card" style="width: 18rem; margin:auto;">
              <img
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeBGNXTpMa2Y0h8ITy3MM8FI1yfMuBtu5quY630zfuUL9R4ueR&s"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                  content.</p>

                <div id="cont3">
                  <u>Leggi di più</u> <i class="fa fa-angle-right"></i>
                </div>

              </div>
            </div>
          </div>



          <div class="col-md-3 offset-md-3">
            <div id="cont4" class="card" style="width: 18rem; margin:auto;">
              <img
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeBGNXTpMa2Y0h8ITy3MM8FI1yfMuBtu5quY630zfuUL9R4ueR&s"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                  content.</p>

                <div id="cont3">
                  <u>Leggi di più</u> <i class="fa fa-angle-right"></i>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
</template>
<script>
export default {};
</script>
<style lang="css">
    body {
  color: white;
  font-family: "Palatino Linotype";
  background-image: url(https://media.istockphoto.com/photos/stars-in-the-night-sky-background-texture-milky-way-glow-of-star-picture-id1082759044?k=6&m=1082759044&s=170667a&w=0&h=gwLmxh0qDNq9D-wd74SbW8DB15SPcurJoj8toSSh0tE=);
  background-size: cover;
  background-color: #000;
  letter-spacing: 3px;
  font-size: 18px;
  cursor: not-allowed; /* <--questo è fatto per darvi fastidio 😉*/
}

#cont {
  margin: auto;
  width: 250px;
  padding: 20px;
  border: 1.5px solid #fff;
  text-align: center;
  cursor: pointer;
  font-variant: small-caps;
  letter-spacing: 7px;
  margin-top: 50px;
  margin-bottom: 100px;
}

#cont:hover {
  border-color: goldenrod;
  color: goldenrod;
  transition: all 0.1s linear;
}

#cont:active {
  background-color: rgba(218, 165, 32, 0.4);
  transition: background-color 0.1s linear;
}

#cont2 {
  margin: 40px auto;
  color: #efefef;
  height: 50px;
  width: 150px;
  transition: all 0.5s;
  position: relative;
  top: 0px;
  text-align: center;
  cursor: pointer;
  line-height: 50px;
  overflow: hidden;
  font-family: "Palatino Linotype", serif;
  font-variant: small-caps;
  letter-spacing: 5px;
  border-radius: 10px 10px 0 0;
  margin-bottom: 100px;
}

#cont2:hover {
  /* animation-timing-function: linear;*/
  /*animation: shaking 1.8s infinite;*/
  letter-spacing: 7px;
  color: goldenrod;
  transition: letter-spacing 500ms ease-in;
}

#cont2:hover:before {
  left: 0;
  background-color: rgba(218, 165, 32, 0.7);
}

#cont2:before {
  content: "";
  position: absolute;
  width: 150px;
  height: 2px;
  background-color: rgba(255, 255, 255, 0);
  left: -100%;
  bottom: 0;
  transition: 0.5s ease;
}

@keyframes shaking {
  0% {
    top: 0px;
  }
  25% {
    top: -5px;
  }
  50% {
    top: -10px;
  }
  75% {
    top: -5px;
  }
  100% {
    top: -3px;
  }
}

#cont2:active {
  background: linear-gradient(
    180deg,
    rgba(218, 165, 32, 0),
    rgba(218, 165, 32, 0.4)
  );
  transition: background-color 0.2s linear;
}

#cont3 {
  margin: 40px auto;
  color: #efefef;
  height: 30px;
  width: 200px;
  background: transparent;
  position: relative;
  top: 0px;
  text-align: center;
  cursor: pointer;
  line-height: 30px;
  overflow: hidden;
  font-family: "Palatino Linotype";
  letter-spacing: 5px;
}

#cont3:hover {
  background: linear-gradient(
    -90deg,
    rgba(218, 165, 32, 0),
    rgba(218, 165, 32, 0.3)
  );
  background-color: rgba(218, 165, 32, 0.6);
  text-shadow: 1px 1px 3px #000;
  transition: background-color 1s ease-out;
}

#cont4 {
  background: transparent;
  font-family: "Palatino Linotype";
  border: 1px rgba(0, 0, 0, 0) solid;
  border-bottom: 1px rgba(255, 255, 255, 0.6) solid;
  border-radius: 0;
}

#cont4:hover {
  border: 1px rgba(218, 165, 32, 0.8) solid;
  transition: border 0.5s ease;
}

#cont4 > div > div {
  margin: auto;
}

#firma {
  position: absolute;
  display: block;
  transform: rotate(-90deg);
  left: 90%;
  opacity: 0.5;
  top: 50%;
  cursor: none;
}

#firma:hover {
  opacity: 1;
}
</style>
```
