class Foo {

  constructor(obj) {
    this.obj.c1 = obj.c1
    this.obj.c2 = obj.c2
  }

  acao() {
    return "Ola acao 1"
  }
}

const i1 = new Foo({ c1: 10, c2: 20 })
console.log(i1)

console.log("Ola Mundo Settings codium --- 1 ---")
/* console.log("Ola Mundo Settings codium --- 1 ---")
console.log("Ola Mundo Settings codium --- 1 ---")
console.log("Ola Mundo Settings codium --- 1 ---")
console.log("Ola Mundo Settings codium --- 1 ---") */
// console.log("Ola Mundo Settings codium --- 1 ---")