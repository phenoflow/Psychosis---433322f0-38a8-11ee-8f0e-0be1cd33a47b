cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  delusional-psychosis-p13---primary:
    run: delusional-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  psychosis-p13---primary:
    run: psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: delusional-psychosis-p13---primary/output
  psychosis-p13-paranoia---primary:
    run: psychosis-p13-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: psychosis-p13---primary/output
  psychosis-p13-presenile---primary:
    run: psychosis-p13-presenile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: psychosis-p13-paranoia---primary/output
  arteriosclerotic-psychosis-p13---primary:
    run: arteriosclerotic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: psychosis-p13-presenile---primary/output
  nonorganic-psychosis-p13---primary:
    run: nonorganic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: arteriosclerotic-psychosis-p13---primary/output
  psychosis-p13-withdrawl---primary:
    run: psychosis-p13-withdrawl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: nonorganic-psychosis-p13---primary/output
  psychosis-p13-tremens---primary:
    run: psychosis-p13-tremens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: psychosis-p13-withdrawl---primary/output
  psychosis-p13-alcohol---primary:
    run: psychosis-p13-alcohol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: psychosis-p13-tremens---primary/output
  psychosis-p13-hallucinosis---primary:
    run: psychosis-p13-hallucinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: psychosis-p13-alcohol---primary/output
  psychosis-p13-hallucinatory---primary:
    run: psychosis-p13-hallucinatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: psychosis-p13-hallucinosis---primary/output
  psychosis-p13-induced---primary:
    run: psychosis-p13-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: psychosis-p13-hallucinatory---primary/output
  psychosis-p13-druginduced---primary:
    run: psychosis-p13-druginduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: psychosis-p13-induced---primary/output
  psychosis-p13-subacute---primary:
    run: psychosis-p13-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: psychosis-p13-druginduced---primary/output
  confusional-psychosis-p13---primary:
    run: confusional-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: psychosis-p13-subacute---primary/output
  traumatic-psychosis-p13---primary:
    run: traumatic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: confusional-psychosis-p13---primary/output
  infective-psychosis-p13---primary:
    run: infective-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: traumatic-psychosis-p13---primary/output
  psychosis-p13-origin---primary:
    run: psychosis-p13-origin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: infective-psychosis-p13---primary/output
  metabolic-psychosis-p13---primary:
    run: metabolic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: psychosis-p13-origin---primary/output
  cerebrovascular-psychosis-p13---primary:
    run: cerebrovascular-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: metabolic-psychosis-p13---primary/output
  psychosis-p13-specified---primary:
    run: psychosis-p13-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cerebrovascular-psychosis-p13---primary/output
  psychosis-p13-schizophrenifrm---primary:
    run: psychosis-p13-schizophrenifrm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: psychosis-p13-specified---primary/output
  psychosis-p13-oneirophrenia---primary:
    run: psychosis-p13-oneirophrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: psychosis-p13-schizophrenifrm---primary/output
  manicdepressive-psychosis-p13---primary:
    run: manicdepressive-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: psychosis-p13-oneirophrenia---primary/output
  manic-psychosis-p13---primary:
    run: manic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: manicdepressive-psychosis-p13---primary/output
  psychosis-p13-mention---primary:
    run: psychosis-p13-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: manic-psychosis-p13---primary/output
  partial-psychosis-p13---primary:
    run: partial-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: psychosis-p13-mention---primary/output
  major-psychosis-p13---primary:
    run: major-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: partial-psychosis-p13---primary/output
  depressive-psychosis-p13---primary:
    run: depressive-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: major-psychosis-p13---primary/output
  psychosis-p13-disordr---primary:
    run: psychosis-p13-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: depressive-psychosis-p13---primary/output
  psychosis-p13-affect---primary:
    run: psychosis-p13-affect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: psychosis-p13-disordr---primary/output
  moderate-psychosis-p13---primary:
    run: moderate-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: psychosis-p13-affect---primary/output
  atypical-psychosis-p13---primary:
    run: atypical-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: moderate-psychosis-p13---primary/output
  simple-psychosis-p13---primary:
    run: simple-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: atypical-psychosis-p13---primary/output
  subchronic-psychosis-p13---primary:
    run: subchronic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: simple-psychosis-p13---primary/output
  psychosis-p13-paraphrenia---primary:
    run: psychosis-p13-paraphrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: subchronic-psychosis-p13---primary/output
  psychosis-p13-depression---primary:
    run: psychosis-p13-depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: psychosis-p13-paraphrenia---primary/output
  psychosis-p13-reaction---primary:
    run: psychosis-p13-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: psychosis-p13-depression---primary/output
  psychogenic-psychosis-p13---primary:
    run: psychogenic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: psychosis-p13-reaction---primary/output
  reactive-psychosis-p13---primary:
    run: reactive-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: psychogenic-psychosis-p13---primary/output
  psychosis-p13-stupor---primary:
    run: psychosis-p13-stupor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: reactive-psychosis-p13---primary/output
  brief-psychosis-p13---primary:
    run: brief-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: psychosis-p13-stupor---primary/output
  disintegrative-psychosis-p13---primary:
    run: disintegrative-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: brief-psychosis-p13---primary/output
  psychosis-p13-heller's---primary:
    run: psychosis-p13-heller's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: disintegrative-psychosis-p13---primary/output
  psychosis-p13-childhood---primary:
    run: psychosis-p13-childhood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: psychosis-p13-heller's---primary/output
  psychosis-p13-superimposed---primary:
    run: psychosis-p13-superimposed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: psychosis-p13-childhood---primary/output
  psychosis-p13-delirium---primary:
    run: psychosis-p13-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: psychosis-p13-superimposed---primary/output
  psychosis-p13-schizophrenialike---primary:
    run: psychosis-p13-schizophrenialike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: psychosis-p13-delirium---primary/output
  solvent-psychosis-p13---primary:
    run: solvent-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: psychosis-p13-schizophrenialike---primary/output
  psychosis-p13-cocaine---primary:
    run: psychosis-p13-cocaine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: solvent-psychosis-p13---primary/output
  psychosis-p13-psychot---primary:
    run: psychosis-p13-psychot---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: psychosis-p13-cocaine---primary/output
  polymorphic-psychosis-p13---primary:
    run: polymorphic-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: psychosis-p13-psychot---primary/output
  cycloid-psychosis-p13---primary:
    run: cycloid-psychosis-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: polymorphic-psychosis-p13---primary/output
  psychosis-p13-hallucination---primary:
    run: psychosis-p13-hallucination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: cycloid-psychosis-p13---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: psychosis-p13-hallucination---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
