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
      <concept id="4786773257797913852" name="ExternalDsl.structure.Transition" flags="ng" index="3x34gm">
        <reference id="4786773257797913878" name="next" index="3x34nW" />
        <reference id="4786773257797913876" name="trigger" index="3x34nY" />
      </concept>
      <concept id="3304790852529566677" name="ExternalDsl.structure.State" flags="ng" index="1S8cCg">
        <property id="3304790852529613251" name="is_initial" index="1S8106" />
        <child id="4786773257797913892" name="transitions" index="3x34ne" />
        <child id="3304790852529566711" name="actions" index="1S8cCM" />
      </concept>
      <concept id="3304790852529566676" name="ExternalDsl.structure.Sensor" flags="ng" index="1S8cCh">
        <property id="4786773257797288017" name="pin" index="3xdGyV" />
      </concept>
      <concept id="3304790852529566679" name="ExternalDsl.structure.App" flags="ng" index="1S8cCi">
        <property id="4786773257798582798" name="freq" index="3x0CF$" />
        <child id="4786773257797288013" name="sensors" index="3xdGyB" />
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
  <node concept="1S8cCi" id="49I2eEzsGA9">
    <property role="TrG5h" value="Test" />
    <property role="3x0CF$" value="44" />
    <node concept="1S8cCh" id="49I2eEzsGAd" role="3xdGyB">
      <property role="TrG5h" value="button" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCg" id="49I2eEzsGAa" role="1S8cCt">
      <property role="TrG5h" value="state_on" />
      <node concept="3x34gm" id="49I2eEzsGAt" role="3x34ne">
        <ref role="3x34nW" node="49I2eEzsGAh" resolve="state_off" />
        <ref role="3x34nY" node="49I2eEzsGAd" resolve="button" />
      </node>
      <node concept="1S8cCL" id="49I2eEzsGAn" role="1S8cCM">
        <ref role="1S8cCV" node="49I2eEzsGAc" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCg" id="49I2eEzsGAh" role="1S8cCt">
      <property role="TrG5h" value="state_off" />
      <property role="1S8106" value="true" />
      <node concept="3x34gm" id="49I2eEzsGAv" role="3x34ne">
        <ref role="3x34nW" node="49I2eEzsGAa" resolve="state_on" />
        <ref role="3x34nY" node="49I2eEzsGAd" resolve="button" />
      </node>
      <node concept="1S8cCL" id="49I2eEzsGAq" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="49I2eEzsGAc" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCm" id="49I2eEzsGAc" role="1S8cCv">
      <property role="TrG5h" value="led" />
      <property role="1S8cCy" value="9" />
    </node>
  </node>
</model>

