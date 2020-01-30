<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec3db262-98f7-4c13-8509-33adcfc7620a(ExternalDsl.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2RsYsllZ3fj">
    <property role="EcuMT" value="3304790852529566675" />
    <property role="TrG5h" value="Actuator" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2RsYsllZ3fx" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="2RsYsllZ3fB" role="1TKVEl">
      <property role="IQ2nx" value="3304790852529566695" />
      <property role="TrG5h" value="pin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RsYsllZ3fk">
    <property role="EcuMT" value="3304790852529566676" />
    <property role="TrG5h" value="Sensor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2RsYsllZ3f_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="49I2eEzmc1h" role="1TKVEl">
      <property role="IQ2nx" value="4786773257797288017" />
      <property role="TrG5h" value="pin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RsYsllZ3fl">
    <property role="EcuMT" value="3304790852529566677" />
    <property role="TrG5h" value="State" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2RsYsllZ3fz" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="2RsYsllZ3fR" role="1TKVEi">
      <property role="IQ2ns" value="3304790852529566711" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2RsYsllZ3fO" resolve="Action" />
    </node>
    <node concept="1TJgyj" id="49I2eEzo$O$" role="1TKVEi">
      <property role="IQ2ns" value="4786773257797913892" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="49I2eEzo$NW" resolve="Transition" />
    </node>
    <node concept="1TJgyi" id="2RsYsllZeB3" role="1TKVEl">
      <property role="IQ2nx" value="3304790852529613251" />
      <property role="TrG5h" value="is_initial" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="49I2eEzr1e4" role="1TKVEl">
      <property role="IQ2nx" value="4786773257798554500" />
      <property role="TrG5h" value="frequency" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RsYsllZ3fn">
    <property role="EcuMT" value="3304790852529566679" />
    <property role="TrG5h" value="App" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="49I2eEzr88e" role="1TKVEl">
      <property role="IQ2nx" value="4786773257798582798" />
      <property role="TrG5h" value="freq" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="2RsYsllZ3fo" role="1TKVEi">
      <property role="IQ2ns" value="3304790852529566680" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2RsYsllZ3fl" resolve="State" />
    </node>
    <node concept="1TJgyj" id="2RsYsllZ3fq" role="1TKVEi">
      <property role="IQ2ns" value="3304790852529566682" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actuators" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2RsYsllZ3fj" resolve="Actuator" />
    </node>
    <node concept="1TJgyj" id="49I2eEzmc1d" role="1TKVEi">
      <property role="IQ2ns" value="4786773257797288013" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sensors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2RsYsllZ3fk" resolve="Sensor" />
    </node>
    <node concept="PrWs8" id="2RsYsllZ3fv" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2RsYslm03_4" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="25R3W" id="2RsYsllZ3fH">
    <property role="3F6X1D" value="3304790852529566701" />
    <property role="TrG5h" value="SIGNAL" />
    <ref role="1H5jkz" node="2RsYsllZ3fI" resolve="HIGH" />
    <node concept="25R33" id="2RsYsllZ3fI" role="25R1y">
      <property role="3tVfz5" value="3304790852529566702" />
      <property role="TrG5h" value="HIGH" />
      <property role="1L1pqM" value="high" />
    </node>
    <node concept="25R33" id="2RsYsllZ3fJ" role="25R1y">
      <property role="3tVfz5" value="3304790852529566703" />
      <property role="TrG5h" value="LOW" />
      <property role="1L1pqM" value="low" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RsYsllZ3fO">
    <property role="EcuMT" value="3304790852529566708" />
    <property role="TrG5h" value="Action" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2RsYsllZ3fW" role="1TKVEl">
      <property role="IQ2nx" value="3304790852529566716" />
      <property role="TrG5h" value="signal" />
      <ref role="AX2Wp" node="2RsYsllZ3fH" resolve="SIGNAL" />
    </node>
    <node concept="1TJgyj" id="2RsYsllZ3fY" role="1TKVEi">
      <property role="IQ2ns" value="3304790852529566718" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2RsYsllZ3fj" resolve="Actuator" />
    </node>
  </node>
  <node concept="1TIwiD" id="49I2eEzo$NW">
    <property role="EcuMT" value="4786773257797913852" />
    <property role="TrG5h" value="Transition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="49I2eEzo$Ok" role="1TKVEi">
      <property role="IQ2ns" value="4786773257797913876" />
      <property role="20kJfa" value="trigger" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2RsYsllZ3fk" resolve="Sensor" />
    </node>
    <node concept="1TJgyj" id="49I2eEzo$Om" role="1TKVEi">
      <property role="IQ2ns" value="4786773257797913878" />
      <property role="20kJfa" value="next" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2RsYsllZ3fl" resolve="State" />
    </node>
    <node concept="1TJgyi" id="49I2eEzo$Op" role="1TKVEl">
      <property role="IQ2nx" value="4786773257797913881" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="2RsYsllZ3fH" resolve="SIGNAL" />
    </node>
  </node>
</model>

