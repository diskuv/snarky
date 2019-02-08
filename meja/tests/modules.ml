let x = 15

module Test1 = struct
  let x = x

  let y = 15

  let z = (1, 2)

  module Test2 = struct
    let a = z
  end
end

module Test2 = Test1
module Test3 = Test1.Test2
module Test4 = Test2.Test2

module Test5 = struct
  module Test = struct
    module Test = struct
      module Test = Test4

      let b = Test1.x
    end
  end
end

let y = Test1.y

let z = (Test1.z, Test1.Test2.a)

let a = (Test2.z, Test3.a, Test4.a)

let b = (Test5.Test.Test.Test.a, Test5.Test.Test.b)
