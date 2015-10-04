@enum CONTEXT_TYPE CPU=1 GPU=2

type Context
  device_type :: CONTEXT_TYPE
  device_id   :: Cint

  old_ctx     :: Nullable{Context}
end
Context(dev_type :: Union{CONTEXT_TYPE, Integer}, dev_id :: Integer = 0) =
    Context(convert(CONTEXT_TYPE, dev_type), convert(Cint, dev_id), Nullable{Context}())


# global default context
DEFAULT_CONTEXT = Context(CPU)
