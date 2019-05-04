module main
using CxxWrap
@wrapmodule(joinpath(@__DIR__, "libs", "libexlib.so"))

function __init__()
    @initcxx
end

function hello()
    println("Hello from julia~")
    println(greet())
end

mutable struct Player
    HP::Int32
    MP::Int32
end

player = Player(10, 22)

function get()::Int32
    println("Hello from julia")
    player.HP += 1
    return player.HP

end

end
