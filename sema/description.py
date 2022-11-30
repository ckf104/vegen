from dataclasses import dataclass
from typing import List
import z3

@dataclass 
class Type:
  bitwidth: int   # note, from data-sheet type attribute(deduced from ctype), eg, __m256i -> 256
  ctype: str # the c intrinsic type name
  is_constant: bool = False # is this an immediate?
  effective_width : int = None  # note, if input type contains a immdediate(etype==IMM), effective_width=immwidth

@dataclass
class Signature:
  inputs: List[Type]
  output: Type

@dataclass
class Semantics:
  inputs: List[z3.BitVecRef]
  output: z3.BitVecRef

@dataclass
class Instruction:
  name: str
  sig: Signature
  sema: Semantics
  cost: int
  element_size: int # output element, note, deduced from etype attribute of `return` node
  features: List[str] # CPU features
