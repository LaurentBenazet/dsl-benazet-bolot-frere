<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:57a931ea-9015-469d-94f6-22c2f2cc77fd(ExternalDsl.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="36b21cb1-2274-40d2-9f74-baf372272c13" name="ExternalDsl" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="36b21cb1-2274-40d2-9f74-baf372272c13" name="ExternalDsl">
      <concept id="3304790852529566677" name="ExternalDsl.structure.State" flags="ng" index="1S8cCg">
        <property id="3304790852529613251" name="is_initial" index="1S8106" />
        <reference id="3304790852529566713" name="next" index="1S8cCW" />
        <child id="3304790852529566711" name="actions" index="1S8cCM" />
      </concept>
      <concept id="3304790852529566679" name="ExternalDsl.structure.App" flags="ng" index="1S8cCi">
        <child id="3304790852529566680" name="states" index="1S8cCt" />
        <child id="3304790852529566682" name="actuators" index="1S8cCv" />
      </concept>
      <concept id="3304790852529566675" name="ExternalDsl.structure.Actuator" flags="ng" index="1S8cCm">
        <property id="3304790852529566695" name="pin" index="1S8cCy" />
      </concept>
      <concept id="3304790852529566708" name="ExternalDsl.structure.Action" flags="ng" index="1S8cCL">
        <property id="3304790852529566716" name="signal" index="1S8cCT" />
        <reference id="3304790852529566718" name="target" index="1S8cCV" />
      </concept>
    </language>
  </registry>
  <node concept="1S8cCi" id="2RsYsllZeAL">
    <property role="TrG5h" value="Test" />
    <node concept="1S8cCg" id="2RsYsllZeAM" role="1S8cCt">
      <property role="TrG5h" value="ON" />
      <ref role="1S8cCW" node="2RsYsllZeAX" resolve="OFF" />
      <node concept="1S8cCL" id="2RsYsllZeAN" role="1S8cCM">
        <ref role="1S8cCV" node="2RsYsllZeAO" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCg" id="2RsYsllZeAX" role="1S8cCt">
      <property role="TrG5h" value="OFF" />
      <property role="1S8106" value="true" />
      <ref role="1S8cCW" node="2RsYsllZeAM" resolve="ON" />
      <node concept="1S8cCL" id="2RsYsllZeAY" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="2RsYsllZeAO" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCm" id="2RsYsllZeAO" role="1S8cCv">
      <property role="TrG5h" value="led" />
      <property role="1S8cCy" value="13" />
    </node>
  </node>
</model>

