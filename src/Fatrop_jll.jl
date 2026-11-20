# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Fatrop_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Fatrop")
JLLWrappers.@generate_main_file("Fatrop", Base.UUID("aea072e7-f65e-5bd3-be56-c5f20aa619ed"))
end  # module Fatrop_jll
