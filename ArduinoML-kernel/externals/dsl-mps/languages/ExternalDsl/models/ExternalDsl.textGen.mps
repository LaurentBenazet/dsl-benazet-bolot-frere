<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:663b39e8-e3dc-4b1f-9eb3-0c154d2dfb2e(ExternalDsl.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="heqe" ref="r:ec3db262-98f7-4c13-8509-33adcfc7620a(ExternalDsl.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1146253292180" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Simple" flags="nn" index="3y1jeu">
        <child id="1146253292181" name="value" index="3y1jev" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="49I2eEzlEO6">
    <ref role="WuzLi" to="heqe:2RsYsllZ3fO" resolve="Action" />
    <node concept="11bSqf" id="49I2eEzlEO7" role="11c4hB">
      <node concept="3clFbS" id="49I2eEzlEO8" role="2VODD2">
        <node concept="lc7rE" id="49I2eEzotQ1" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzotQn" role="lcghm">
            <property role="lacIc" value="digitalWrite(" />
          </node>
          <node concept="l9hG8" id="49I2eEzotRX" role="lcghm">
            <node concept="2YIFZM" id="49I2eEzovXb" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="49I2eEzowzF" role="37wK5m">
                <node concept="2OqwBi" id="49I2eEzow8u" role="2Oq$k0">
                  <node concept="117lpO" id="49I2eEzow0D" role="2Oq$k0" />
                  <node concept="3TrEf2" id="49I2eEzowgi" role="2OqNvi">
                    <ref role="3Tt5mk" to="heqe:2RsYsllZ3fY" resolve="target" />
                  </node>
                </node>
                <node concept="3TrcHB" id="49I2eEzowIB" role="2OqNvi">
                  <ref role="3TsBF5" to="heqe:2RsYsllZ3fB" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzoxt5" role="lcghm">
            <property role="lacIc" value="," />
          </node>
          <node concept="l9hG8" id="49I2eEzoxvU" role="lcghm">
            <node concept="2OqwBi" id="49I2eEzqQVj" role="lb14g">
              <node concept="2YIFZM" id="49I2eEzoyFI" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="49I2eEzoyTB" role="37wK5m">
                  <node concept="117lpO" id="49I2eEzoyH_" role="2Oq$k0" />
                  <node concept="3TrcHB" id="49I2eEzoyVv" role="2OqNvi">
                    <ref role="3TsBF5" to="heqe:2RsYsllZ3fW" resolve="signal" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="49I2eEzqReu" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toUpperCase()" resolve="toUpperCase" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzpzxo" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="49I2eEzozB_" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49I2eEzlEOL">
    <ref role="WuzLi" to="heqe:2RsYsllZ3fj" resolve="Actuator" />
    <node concept="11bSqf" id="49I2eEzlEOM" role="11c4hB">
      <node concept="3clFbS" id="49I2eEzlEON" role="2VODD2">
        <node concept="1bpajm" id="49I2eEzq0ds" role="3cqZAp" />
        <node concept="lc7rE" id="49I2eEzlMnL" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzlMoa" role="lcghm">
            <property role="lacIc" value="pinMode(" />
          </node>
          <node concept="l9hG8" id="49I2eEzlMpB" role="lcghm">
            <node concept="2YIFZM" id="49I2eEzlOz9" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="49I2eEzlOLX" role="37wK5m">
                <node concept="117lpO" id="49I2eEzlO$E" role="2Oq$k0" />
                <node concept="3TrcHB" id="49I2eEzlOVV" role="2OqNvi">
                  <ref role="3TsBF5" to="heqe:2RsYsllZ3fB" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzlPDK" role="lcghm">
            <property role="lacIc" value=", OUTPUT); //" />
          </node>
          <node concept="l9hG8" id="49I2eEzlPI5" role="lcghm">
            <node concept="2OqwBi" id="49I2eEzlPS$" role="lb14g">
              <node concept="117lpO" id="49I2eEzlPJZ" role="2Oq$k0" />
              <node concept="3TrcHB" id="49I2eEzlQ1l" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzlQCF" role="lcghm">
            <property role="lacIc" value=" [Actuator]" />
          </node>
          <node concept="l8MVK" id="49I2eEzlQIm" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49I2eEzlLmA">
    <ref role="WuzLi" to="heqe:2RsYsllZ3fn" resolve="App" />
    <node concept="29tfMY" id="49I2eEzlLmB" role="29tGrW">
      <node concept="3clFbS" id="49I2eEzlLmC" role="2VODD2">
        <node concept="3clFbF" id="49I2eEzlLrU" role="3cqZAp">
          <node concept="2OqwBi" id="49I2eEzmiXk" role="3clFbG">
            <node concept="117lpO" id="49I2eEzmiOe" role="2Oq$k0" />
            <node concept="3TrcHB" id="49I2eEzmj6Z" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="49I2eEzlLsZ" role="33IsuW">
      <node concept="3clFbS" id="49I2eEzlLt0" role="2VODD2">
        <node concept="3clFbF" id="49I2eEzlLtv" role="3cqZAp">
          <node concept="Xl_RD" id="49I2eEzlLtu" role="3clFbG">
            <property role="Xl_RC" value="txt" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="49I2eEzlLu$" role="11c4hB">
      <node concept="3clFbS" id="49I2eEzlLu_" role="2VODD2">
        <node concept="lc7rE" id="49I2eEzlLvs" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzlLvM" role="lcghm">
            <property role="lacIc" value="//Wiring code generated from an ArduinoML model" />
          </node>
          <node concept="l8MVK" id="49I2eEzlLyk" role="lcghm" />
        </node>
        <node concept="lc7rE" id="49I2eEzlLyY" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzlLzp" role="lcghm">
            <property role="lacIc" value="//From the mps external dsl" />
          </node>
          <node concept="l8MVK" id="49I2eEzlLAp" role="lcghm" />
        </node>
        <node concept="lc7rE" id="49I2eEzlLB6" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzlLB$" role="lcghm">
            <property role="lacIc" value="//Application name: " />
          </node>
          <node concept="l9hG8" id="49I2eEzlLDp" role="lcghm">
            <node concept="2OqwBi" id="49I2eEzlLNv" role="lb14g">
              <node concept="117lpO" id="49I2eEzlLEi" role="2Oq$k0" />
              <node concept="3TrcHB" id="49I2eEzlLXz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="l8MVK" id="49I2eEzlM10" role="lcghm" />
        </node>
        <node concept="lc7rE" id="49I2eEzlM2A" role="3cqZAp">
          <node concept="l8MVK" id="49I2eEzlM3y" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49I2eEzmp3y" role="3cqZAp" />
        <node concept="3SKdUt" id="49I2eEzmlSF" role="3cqZAp">
          <node concept="1PaTwC" id="49I2eEzmlSG" role="3ndbpf">
            <node concept="3oM_SD" id="49I2eEzmlSI" role="1PaTwD">
              <property role="3oM_SC" value="setup" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzlM4I" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzlM5G" role="lcghm">
            <property role="lacIc" value="void setup(){" />
          </node>
          <node concept="l8MVK" id="49I2eEzlM7K" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49I2eEzlQSj" role="3cqZAp">
          <node concept="3clFbS" id="49I2eEzlQSl" role="3izTki">
            <node concept="lc7rE" id="49I2eEznp0W" role="3cqZAp">
              <node concept="l9S2W" id="49I2eEznp80" role="lcghm">
                <node concept="2OqwBi" id="49I2eEznpfk" role="lbANJ">
                  <node concept="117lpO" id="49I2eEznp8o" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="49I2eEznpoO" role="2OqNvi">
                    <ref role="3TtcxE" to="heqe:2RsYsllZ3fq" resolve="actuators" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49I2eEznpwp" role="3cqZAp">
              <node concept="l9S2W" id="49I2eEznpBD" role="lcghm">
                <node concept="2OqwBi" id="49I2eEznpIX" role="lbANJ">
                  <node concept="117lpO" id="49I2eEznpC1" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="49I2eEznpSt" role="2OqNvi">
                    <ref role="3TtcxE" to="heqe:49I2eEzmc1d" resolve="sensors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzlMkN" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzlMlV" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49I2eEzlMmO" role="lcghm" />
        </node>
        <node concept="lc7rE" id="49I2eEzmk_z" role="3cqZAp">
          <node concept="l8MVK" id="49I2eEzmkHu" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49I2eEzmpb$" role="3cqZAp" />
        <node concept="3SKdUt" id="49I2eEzmkPH" role="3cqZAp">
          <node concept="1PaTwC" id="49I2eEzmkPI" role="3ndbpf">
            <node concept="3oM_SD" id="49I2eEzmkPK" role="1PaTwD">
              <property role="3oM_SC" value="timing" />
            </node>
            <node concept="3oM_SD" id="49I2eEzmkYf" role="1PaTwD">
              <property role="3oM_SC" value="stuff" />
            </node>
            <node concept="3oM_SD" id="49I2eEzmkYy" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="49I2eEzmkYQ" role="1PaTwD">
              <property role="3oM_SC" value="extension" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzmm17" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzmmLQ" role="lcghm">
            <property role="lacIc" value="long time = 0;" />
          </node>
          <node concept="l8MVK" id="49I2eEzmmNO" role="lcghm" />
        </node>
        <node concept="3clFbJ" id="49I2eEzsNbr" role="3cqZAp">
          <node concept="3clFbS" id="49I2eEzsNbt" role="3clFbx">
            <node concept="lc7rE" id="49I2eEzsPgL" role="3cqZAp">
              <node concept="la8eA" id="49I2eEzsPh9" role="lcghm">
                <property role="lacIc" value="long defFreq = 1000/" />
              </node>
              <node concept="l9hG8" id="49I2eEzsPiY" role="lcghm">
                <node concept="2YIFZM" id="49I2eEzsPzz" role="lb14g">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <node concept="2OqwBi" id="49I2eEzsPO4" role="37wK5m">
                    <node concept="117lpO" id="49I2eEzsP_1" role="2Oq$k0" />
                    <node concept="3TrcHB" id="49I2eEzsPY$" role="2OqNvi">
                      <ref role="3TsBF5" to="heqe:49I2eEzr88e" resolve="freq" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="49I2eEzsQFC" role="lcghm">
                <property role="lacIc" value=";" />
              </node>
              <node concept="l8MVK" id="49I2eEzsQIh" role="lcghm" />
            </node>
          </node>
          <node concept="3fqX7Q" id="49I2eEzsNKZ" role="3clFbw">
            <node concept="2OqwBi" id="49I2eEzsOMO" role="3fr31v">
              <node concept="2OqwBi" id="49I2eEzsNUq" role="2Oq$k0">
                <node concept="117lpO" id="49I2eEzsNLu" role="2Oq$k0" />
                <node concept="3TrcHB" id="49I2eEzsO41" role="2OqNvi">
                  <ref role="3TsBF5" to="heqe:49I2eEzr88e" resolve="freq" />
                </node>
              </node>
              <node concept="3y1jeu" id="49I2eEzsPfk" role="2OqNvi">
                <node concept="10Nm6u" id="49I2eEzsPg4" role="3y1jev" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="49I2eEzsQJE" role="9aQIa">
            <node concept="3clFbS" id="49I2eEzsQJF" role="9aQI4">
              <node concept="lc7rE" id="49I2eEzsQLg" role="3cqZAp">
                <node concept="la8eA" id="49I2eEzsQLA" role="lcghm">
                  <property role="lacIc" value="long defFreq = 200;" />
                </node>
                <node concept="l8MVK" id="49I2eEzsQNr" role="lcghm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzmoV3" role="3cqZAp">
          <node concept="l8MVK" id="49I2eEzmp3a" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49I2eEzmtHX" role="3cqZAp" />
        <node concept="3SKdUt" id="49I2eEzmtw6" role="3cqZAp">
          <node concept="1PaTwC" id="49I2eEzo2mq" role="3ndbpf">
            <node concept="3oM_SD" id="49I2eEzmtDQ" role="1PaTwD">
              <property role="3oM_SC" value="iterate" />
            </node>
            <node concept="3oM_SD" id="49I2eEzmtFa" role="1PaTwD">
              <property role="3oM_SC" value="over" />
            </node>
            <node concept="3oM_SD" id="49I2eEzmtFt" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="49I2eEzo2mL" role="1PaTwD">
              <property role="3oM_SC" value="states" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzo2na" role="3cqZAp">
          <node concept="l9S2W" id="49I2eEzo2p2" role="lcghm">
            <node concept="2OqwBi" id="49I2eEzo2rQ" role="lbANJ">
              <node concept="117lpO" id="49I2eEzo2pq" role="2Oq$k0" />
              <node concept="3Tsc0h" id="49I2eEzo2t4" role="2OqNvi">
                <ref role="3TtcxE" to="heqe:2RsYsllZ3fo" resolve="states" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzogx9" role="3cqZAp">
          <node concept="l8MVK" id="49I2eEzogAn" role="lcghm" />
        </node>
        <node concept="lc7rE" id="49I2eEzo2y$" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzo2$D" role="lcghm">
            <property role="lacIc" value="void loop() {" />
          </node>
          <node concept="l8MVK" id="49I2eEzo2Au" role="lcghm" />
        </node>
        <node concept="3clFbH" id="49I2eEzog7s" role="3cqZAp" />
        <node concept="3clFbF" id="49I2eEzoazP" role="3cqZAp">
          <node concept="2OqwBi" id="49I2eEzoaYi" role="3clFbG">
            <node concept="2OqwBi" id="49I2eEzoaC3" role="2Oq$k0">
              <node concept="117lpO" id="49I2eEzoazN" role="2Oq$k0" />
              <node concept="3Tsc0h" id="49I2eEzoaDh" role="2OqNvi">
                <ref role="3TtcxE" to="heqe:2RsYsllZ3fo" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="49I2eEzobuG" role="2OqNvi">
              <node concept="1bVj0M" id="49I2eEzobuI" role="23t8la">
                <node concept="3clFbS" id="49I2eEzobuJ" role="1bW5cS">
                  <node concept="3clFbJ" id="49I2eEzobyD" role="3cqZAp">
                    <node concept="2OqwBi" id="49I2eEzobG1" role="3clFbw">
                      <node concept="37vLTw" id="49I2eEzob_f" role="2Oq$k0">
                        <ref role="3cqZAo" node="49I2eEzobuK" resolve="it" />
                      </node>
                      <node concept="3TrcHB" id="49I2eEzobYh" role="2OqNvi">
                        <ref role="3TsBF5" to="heqe:2RsYsllZeB3" resolve="is_initial" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="49I2eEzobyF" role="3clFbx">
                      <node concept="3izx1p" id="49I2eEzokDl" role="3cqZAp">
                        <node concept="3clFbS" id="49I2eEzokDn" role="3izTki">
                          <node concept="1bpajm" id="49I2eEzokKk" role="3cqZAp" />
                          <node concept="lc7rE" id="49I2eEzokQe" role="3cqZAp">
                            <node concept="l9hG8" id="49I2eEzokTh" role="lcghm">
                              <node concept="2OqwBi" id="49I2eEzol1E" role="lb14g">
                                <node concept="37vLTw" id="49I2eEzokWN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="49I2eEzobuK" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="49I2eEzol9X" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="49I2eEzols5" role="lcghm">
                              <property role="lacIc" value="();" />
                            </node>
                            <node concept="l8MVK" id="49I2eEzolE2" role="lcghm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="49I2eEzobuK" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="49I2eEzobuL" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzo73H" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzo7fp" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49I2eEzo7gi" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49I2eEzmmW9">
    <ref role="WuzLi" to="heqe:2RsYsllZ3fl" resolve="State" />
    <node concept="11bSqf" id="49I2eEzmmWa" role="11c4hB">
      <node concept="3clFbS" id="49I2eEzmmWb" role="2VODD2">
        <node concept="lc7rE" id="49I2eEzmmWw" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzmmWQ" role="lcghm">
            <property role="lacIc" value="void " />
          </node>
          <node concept="l9hG8" id="49I2eEzmmYd" role="lcghm">
            <node concept="2OqwBi" id="49I2eEzmn7C" role="lb14g">
              <node concept="117lpO" id="49I2eEzmmZ6" role="2Oq$k0" />
              <node concept="3TrcHB" id="49I2eEzmngm" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzozK3" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l8MVK" id="49I2eEzmWjB" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49I2eEzozNj" role="3cqZAp">
          <node concept="3clFbS" id="49I2eEzozNl" role="3izTki">
            <node concept="1bpajm" id="49I2eEzpBfi" role="3cqZAp" />
            <node concept="lc7rE" id="49I2eEzozOH" role="3cqZAp">
              <node concept="l9S2W" id="49I2eEzozQd" role="lcghm">
                <node concept="2OqwBi" id="49I2eEzozTp" role="lbANJ">
                  <node concept="117lpO" id="49I2eEzozQz" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="49I2eEzozXZ" role="2OqNvi">
                    <ref role="3TtcxE" to="heqe:2RsYsllZ3fR" resolve="actions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49I2eEzsH5A" role="3cqZAp" />
            <node concept="3SKdUt" id="49I2eEzsGUO" role="3cqZAp">
              <node concept="1PaTwC" id="49I2eEzsGUP" role="3ndbpf">
                <node concept="3oM_SD" id="49I2eEzsGWX" role="1PaTwD">
                  <property role="3oM_SC" value="next" />
                </node>
                <node concept="3oM_SD" id="49I2eEzsGXW" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="49I2eEzsGY2" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="49I2eEzsGYj" role="1PaTwD">
                  <property role="3oM_SC" value="different" />
                </node>
                <node concept="3oM_SD" id="49I2eEzsGYT" role="1PaTwD">
                  <property role="3oM_SC" value="frequency" />
                </node>
                <node concept="3oM_SD" id="49I2eEzsGZc" role="1PaTwD">
                  <property role="3oM_SC" value="values" />
                </node>
                <node concept="3oM_SD" id="49I2eEzsH1E" role="1PaTwD">
                  <property role="3oM_SC" value="ordered" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="49I2eEzsHhV" role="3cqZAp">
              <node concept="3clFbS" id="49I2eEzsHhX" role="3clFbx">
                <node concept="lc7rE" id="49I2eEzsJbL" role="3cqZAp">
                  <node concept="2BGw6n" id="49I2eEzsJc9" role="lcghm" />
                  <node concept="la8eA" id="49I2eEzsJe0" role="lcghm">
                    <property role="lacIc" value="long debounce = 1000/" />
                  </node>
                  <node concept="l9hG8" id="49I2eEzsJfR" role="lcghm">
                    <node concept="2YIFZM" id="49I2eEzsJT5" role="lb14g">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                      <node concept="2OqwBi" id="49I2eEzsJZf" role="37wK5m">
                        <node concept="117lpO" id="49I2eEzsJUz" role="2Oq$k0" />
                        <node concept="3TrcHB" id="49I2eEzsK17" role="2OqNvi">
                          <ref role="3TsBF5" to="heqe:49I2eEzr1e4" resolve="frequency" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="49I2eEzsKHx" role="lcghm">
                    <property role="lacIc" value=";" />
                  </node>
                  <node concept="l8MVK" id="49I2eEzsKKo" role="lcghm" />
                </node>
              </node>
              <node concept="3fqX7Q" id="49I2eEzsHGt" role="3clFbw">
                <node concept="2OqwBi" id="49I2eEzsIFW" role="3fr31v">
                  <node concept="2OqwBi" id="49I2eEzsHWj" role="2Oq$k0">
                    <node concept="117lpO" id="49I2eEzsHGW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="49I2eEzsHXi" role="2OqNvi">
                      <ref role="3TsBF5" to="heqe:49I2eEzr1e4" resolve="frequency" />
                    </node>
                  </node>
                  <node concept="3y1jeu" id="49I2eEzsJ8s" role="2OqNvi">
                    <node concept="10Nm6u" id="49I2eEzsJ9c" role="3y1jev" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="49I2eEzsLVK" role="9aQIa">
                <node concept="3clFbS" id="49I2eEzsLVL" role="9aQI4">
                  <node concept="lc7rE" id="49I2eEzsLXm" role="3cqZAp">
                    <node concept="2BGw6n" id="49I2eEzsLXG" role="lcghm" />
                    <node concept="la8eA" id="49I2eEzsLYm" role="lcghm">
                      <property role="lacIc" value="long debounce = defFreq;" />
                    </node>
                    <node concept="l8MVK" id="49I2eEzsM3M" role="lcghm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49I2eEzsMGl" role="3cqZAp" />
            <node concept="lc7rE" id="49I2eEzo$d9" role="3cqZAp">
              <node concept="2BGw6n" id="49I2eEzpI7r" role="lcghm" />
              <node concept="la8eA" id="49I2eEzo$dS" role="lcghm">
                <property role="lacIc" value="boolean guard = millis() - time &gt; debounce;" />
              </node>
              <node concept="l8MVK" id="49I2eEzo$eL" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49I2eEzo$hE" role="3cqZAp">
              <node concept="2BGw6n" id="49I2eEzpI88" role="lcghm" />
              <node concept="la8eA" id="49I2eEzo$is" role="lcghm">
                <property role="lacIc" value="if(guard) {" />
              </node>
              <node concept="l8MVK" id="49I2eEzo$jl" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49I2eEzo$kp" role="3cqZAp">
              <node concept="2BGw6n" id="49I2eEzo$n6" role="lcghm" />
              <node concept="2BGw6n" id="49I2eEzpI8Q" role="lcghm" />
              <node concept="la8eA" id="49I2eEzo$nS" role="lcghm">
                <property role="lacIc" value="time = millis();" />
              </node>
              <node concept="l8MVK" id="49I2eEzo$pz" role="lcghm" />
            </node>
            <node concept="lc7rE" id="49I2eEzo$qG" role="3cqZAp">
              <node concept="2BGw6n" id="49I2eEzpI9$" role="lcghm" />
              <node concept="la8eA" id="49I2eEzo$r_" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="l8MVK" id="49I2eEzo$su" role="lcghm" />
            </node>
            <node concept="3clFbH" id="49I2eEzqzPK" role="3cqZAp" />
            <node concept="3SKdUt" id="49I2eEzo$vy" role="3cqZAp">
              <node concept="1PaTwC" id="49I2eEzo$vz" role="3ndbpf">
                <node concept="3oM_SD" id="49I2eEzqzKy" role="1PaTwD">
                  <property role="3oM_SC" value="iterate" />
                </node>
                <node concept="3oM_SD" id="49I2eEzqzLo" role="1PaTwD">
                  <property role="3oM_SC" value="over" />
                </node>
                <node concept="3oM_SD" id="49I2eEzqzRz" role="1PaTwD">
                  <property role="3oM_SC" value="transitions" />
                </node>
                <node concept="3oM_SD" id="49I2eEzqzLu" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="49I2eEzqzIs" role="3cqZAp">
              <node concept="l9S2W" id="49I2eEzqzS9" role="lcghm">
                <node concept="2OqwBi" id="49I2eEzqzYJ" role="lbANJ">
                  <node concept="117lpO" id="49I2eEzqzSx" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="49I2eEzq$6T" role="2OqNvi">
                    <ref role="3TtcxE" to="heqe:49I2eEzo$O$" resolve="transitions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49I2eEzqzLJ" role="3cqZAp" />
            <node concept="lc7rE" id="49I2eEzo$xB" role="3cqZAp">
              <node concept="2BGw6n" id="49I2eEzpIc$" role="lcghm" />
              <node concept="l9hG8" id="49I2eEzo$_6" role="lcghm">
                <node concept="2OqwBi" id="49I2eEzo$CW" role="lb14g">
                  <node concept="117lpO" id="49I2eEzo$_W" role="2Oq$k0" />
                  <node concept="3TrcHB" id="49I2eEzo$I6" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="49I2eEzo$Jx" role="lcghm">
                <property role="lacIc" value="();" />
              </node>
              <node concept="l8MVK" id="49I2eEzo$Nb" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="49I2eEzpIfn" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzpIhv" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49I2eEzpIio" role="lcghm" />
        </node>
        <node concept="lc7rE" id="49I2eEzpLTu" role="3cqZAp">
          <node concept="l8MVK" id="49I2eEzpLVD" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49I2eEznxxq">
    <ref role="WuzLi" to="heqe:2RsYsllZ3fk" resolve="Sensor" />
    <node concept="11bSqf" id="49I2eEznxxr" role="11c4hB">
      <node concept="3clFbS" id="49I2eEznxxs" role="2VODD2">
        <node concept="1bpajm" id="49I2eEzq07n" role="3cqZAp" />
        <node concept="lc7rE" id="49I2eEznxxL" role="3cqZAp">
          <node concept="la8eA" id="49I2eEznx_k" role="lcghm">
            <property role="lacIc" value="pinMode(" />
          </node>
          <node concept="l9hG8" id="49I2eEznxB9" role="lcghm">
            <node concept="2YIFZM" id="49I2eEznya1" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="49I2eEznyld" role="37wK5m">
                <node concept="117lpO" id="49I2eEznybv" role="2Oq$k0" />
                <node concept="3TrcHB" id="49I2eEznyqN" role="2OqNvi">
                  <ref role="3TsBF5" to="heqe:49I2eEzmc1h" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEznz7I" role="lcghm">
            <property role="lacIc" value=", INPUT) //" />
          </node>
          <node concept="l9hG8" id="49I2eEznzci" role="lcghm">
            <node concept="2OqwBi" id="49I2eEznzj7" role="lb14g">
              <node concept="117lpO" id="49I2eEznze9" role="2Oq$k0" />
              <node concept="3TrcHB" id="49I2eEznzoh" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEznzZx" role="lcghm">
            <property role="lacIc" value=" [Sensor]" />
          </node>
          <node concept="l8MVK" id="49I2eEzn$6B" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="49I2eEzq4r$">
    <ref role="WuzLi" to="heqe:49I2eEzo$NW" resolve="Transition" />
    <node concept="11bSqf" id="49I2eEzq4r_" role="11c4hB">
      <node concept="3clFbS" id="49I2eEzq4rA" role="2VODD2">
        <node concept="1bpajm" id="49I2eEzqcuG" role="3cqZAp" />
        <node concept="lc7rE" id="49I2eEzq4sc" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzq4s$" role="lcghm">
            <property role="lacIc" value="if( digitalRead(" />
          </node>
          <node concept="l9hG8" id="49I2eEzq4x2" role="lcghm">
            <node concept="2YIFZM" id="49I2eEzq5z1" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="49I2eEzq627" role="37wK5m">
                <node concept="2OqwBi" id="49I2eEzq5KH" role="2Oq$k0">
                  <node concept="117lpO" id="49I2eEzq5$v" role="2Oq$k0" />
                  <node concept="3TrEf2" id="49I2eEzq5Ti" role="2OqNvi">
                    <ref role="3Tt5mk" to="heqe:49I2eEzo$Ok" resolve="trigger" />
                  </node>
                </node>
                <node concept="3TrcHB" id="49I2eEzq6eM" role="2OqNvi">
                  <ref role="3TsBF5" to="heqe:49I2eEzmc1h" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzq6YN" role="lcghm">
            <property role="lacIc" value=") == " />
          </node>
          <node concept="l9hG8" id="49I2eEzq7Cs" role="lcghm">
            <node concept="2OqwBi" id="49I2eEzqLgr" role="lb14g">
              <node concept="2YIFZM" id="49I2eEzqKF$" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="49I2eEzqKTD" role="37wK5m">
                  <node concept="117lpO" id="49I2eEzqKHr" role="2Oq$k0" />
                  <node concept="3TrcHB" id="49I2eEzqL1t" role="2OqNvi">
                    <ref role="3TsBF5" to="heqe:49I2eEzo$Op" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="49I2eEzqLzA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toUpperCase()" resolve="toUpperCase" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="49I2eEzq8N6" role="lcghm">
            <property role="lacIc" value=" &amp;&amp; guard ) {" />
          </node>
          <node concept="l8MVK" id="49I2eEzq8Xs" role="lcghm" />
        </node>
        <node concept="3izx1p" id="49I2eEzqkvW" role="3cqZAp">
          <node concept="3clFbS" id="49I2eEzqkvY" role="3izTki">
            <node concept="1bpajm" id="49I2eEzqky_" role="3cqZAp" />
            <node concept="lc7rE" id="49I2eEzqkzc" role="3cqZAp">
              <node concept="la8eA" id="49I2eEzqkz_" role="lcghm">
                <property role="lacIc" value="time = millis();" />
              </node>
              <node concept="l8MVK" id="49I2eEzqk_b" role="lcghm" />
            </node>
            <node concept="1bpajm" id="49I2eEzqk_Q" role="3cqZAp" />
            <node concept="lc7rE" id="49I2eEzqkA_" role="3cqZAp">
              <node concept="l9hG8" id="49I2eEzqkB2" role="lcghm">
                <node concept="2OqwBi" id="49I2eEzql1O" role="lb14g">
                  <node concept="2OqwBi" id="49I2eEzqkJL" role="2Oq$k0">
                    <node concept="117lpO" id="49I2eEzqkBU" role="2Oq$k0" />
                    <node concept="3TrEf2" id="49I2eEzqkR9" role="2OqNvi">
                      <ref role="3Tt5mk" to="heqe:49I2eEzo$Om" resolve="next" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="49I2eEzqlck" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="49I2eEzqCBo" role="lcghm">
                <property role="lacIc" value="();" />
              </node>
              <node concept="l8MVK" id="49I2eEzqlfL" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="1bpajm" id="49I2eEzqCFG" role="3cqZAp" />
        <node concept="lc7rE" id="49I2eEzqCLJ" role="3cqZAp">
          <node concept="la8eA" id="49I2eEzqDvn" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="49I2eEzqDzM" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

