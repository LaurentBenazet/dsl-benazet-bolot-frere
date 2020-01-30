<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a28e0cfb-781a-4c91-81a4-1abe534238fe(ExternalDsl.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="heqe" ref="r:ec3db262-98f7-4c13-8509-33adcfc7620a(ExternalDsl.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1146253292180" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Simple" flags="nn" index="3y1jeu">
        <child id="1146253292181" name="value" index="3y1jev" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2RsYsllZf32">
    <ref role="1XX52x" to="heqe:2RsYsllZ3fj" resolve="Actuator" />
    <node concept="3EZMnI" id="2RsYsllZoIU" role="2wV5jI">
      <node concept="2iRfu4" id="2RsYsllZoIV" role="2iSdaV" />
      <node concept="3EZMnI" id="2RsYsllZoJ2" role="3EZMnx">
        <node concept="l2Vlx" id="2RsYsllZoJ3" role="2iSdaV" />
        <node concept="VPM3Z" id="2RsYsllZoJ4" role="3F10Kt" />
        <node concept="3F0ifn" id="2RsYsllZoJk" role="3EZMnx">
          <property role="3F0ifm" value="actuator:" />
        </node>
        <node concept="3F0A7n" id="2RsYsllZoJq" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="2RsYsllZoJy" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
        </node>
        <node concept="3F0A7n" id="2RsYsllZoJG" role="3EZMnx">
          <ref role="1NtTu8" to="heqe:2RsYsllZ3fB" resolve="pin" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2RsYsllZtDX">
    <ref role="1XX52x" to="heqe:2RsYsllZ3fO" resolve="Action" />
    <node concept="3EZMnI" id="2RsYsllZtDZ" role="2wV5jI">
      <node concept="1iCGBv" id="2RsYsllZtEL" role="3EZMnx">
        <ref role="1NtTu8" to="heqe:2RsYsllZ3fY" resolve="target" />
        <node concept="1sVBvm" id="2RsYsllZtEN" role="1sWHZn">
          <node concept="3F0A7n" id="2RsYsllZtEU" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2RsYsllZtF2" role="3EZMnx">
        <property role="3F0ifm" value="&lt;-" />
      </node>
      <node concept="3F0A7n" id="2RsYsllZtFe" role="3EZMnx">
        <ref role="1NtTu8" to="heqe:2RsYsllZ3fW" resolve="signal" />
      </node>
      <node concept="2iRfu4" id="2RsYsllZtE2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2RsYsllZyBQ">
    <ref role="1XX52x" to="heqe:2RsYsllZ3fl" resolve="State" />
    <node concept="3EZMnI" id="2RsYsllZySq" role="2wV5jI">
      <node concept="3EZMnI" id="2RsYsllZyST" role="3EZMnx">
        <node concept="VPM3Z" id="2RsYsllZySV" role="3F10Kt" />
        <node concept="3F0A7n" id="2RsYsllZyTe" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="2RsYsllZyTk" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3XFhqQ" id="2RsYsllZyTs" role="3EZMnx" />
        <node concept="3XFhqQ" id="2RsYsllZyTO" role="3EZMnx" />
        <node concept="3XFhqQ" id="2RsYsllZyUc" role="3EZMnx" />
        <node concept="3F0ifn" id="49I2eEzrQvX" role="3EZMnx">
          <property role="3F0ifm" value="initial :" />
        </node>
        <node concept="3F0A7n" id="49I2eEzrEKl" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="heqe:2RsYsllZeB3" resolve="is_initial" />
        </node>
        <node concept="l2Vlx" id="2RsYsllZySY" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="49I2eEzpoY8" role="3EZMnx">
        <node concept="VPM3Z" id="49I2eEzpoYa" role="3F10Kt" />
        <node concept="3XFhqQ" id="49I2eEzqVGS" role="3EZMnx" />
        <node concept="3F2HdR" id="49I2eEzpoYG" role="3EZMnx">
          <ref role="1NtTu8" to="heqe:2RsYsllZ3fR" resolve="actions" />
          <node concept="2iRkQZ" id="49I2eEzpoYJ" role="2czzBx" />
          <node concept="VPM3Z" id="49I2eEzpoYK" role="3F10Kt" />
          <node concept="3F0ifn" id="49I2eEzpoYO" role="2czzBI">
            <property role="3F0ifm" value="no actions defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="49I2eEzpoYd" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="49I2eEzpoZA" role="3EZMnx">
        <node concept="VPM3Z" id="49I2eEzpoZC" role="3F10Kt" />
        <node concept="3XFhqQ" id="49I2eEzqVH5" role="3EZMnx" />
        <node concept="3F2HdR" id="49I2eEzpp08" role="3EZMnx">
          <ref role="1NtTu8" to="heqe:49I2eEzo$O$" resolve="transitions" />
          <node concept="2iRkQZ" id="49I2eEzpp0b" role="2czzBx" />
          <node concept="VPM3Z" id="49I2eEzpp0c" role="3F10Kt" />
          <node concept="3F0ifn" id="49I2eEzpp0g" role="2czzBI">
            <property role="3F0ifm" value="no transitions defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="49I2eEzpoZF" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="49I2eEzs1wI" role="3EZMnx">
        <node concept="VPM3Z" id="49I2eEzs1wK" role="3F10Kt" />
        <node concept="3XFhqQ" id="49I2eEzspvP" role="3EZMnx" />
        <node concept="1QoScp" id="49I2eEzs1xj" role="3EZMnx">
          <property role="1QpmdY" value="true" />
          <node concept="pkWqt" id="49I2eEzs1xm" role="3e4ffs">
            <node concept="3clFbS" id="49I2eEzs1xo" role="2VODD2">
              <node concept="3clFbF" id="49I2eEzs1_q" role="3cqZAp">
                <node concept="2OqwBi" id="49I2eEzsiz$" role="3clFbG">
                  <node concept="2OqwBi" id="49I2eEzshxw" role="2Oq$k0">
                    <node concept="pncrf" id="49I2eEzshl$" role="2Oq$k0" />
                    <node concept="3TrcHB" id="49I2eEzshG6" role="2OqNvi">
                      <ref role="3TsBF5" to="heqe:49I2eEzr1e4" resolve="frequency" />
                    </node>
                  </node>
                  <node concept="3y1jeu" id="49I2eEzsj8X" role="2OqNvi">
                    <node concept="10Nm6u" id="49I2eEzsjpG" role="3y1jev" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="49I2eEzs3O2" role="1QoVPY">
            <property role="3F0ifm" value="frequency :" />
          </node>
          <node concept="3F0ifn" id="49I2eEztqMf" role="1QoS34">
            <property role="3F0ifm" value=" " />
          </node>
        </node>
        <node concept="l2Vlx" id="49I2eEzs1wN" role="2iSdaV" />
        <node concept="3F0A7n" id="49I2eEzs3PK" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="heqe:49I2eEzr1e4" resolve="frequency" />
        </node>
        <node concept="1QoScp" id="49I2eEztfKv" role="3EZMnx">
          <property role="1QpmdY" value="true" />
          <node concept="3F0ifn" id="49I2eEztqMZ" role="1QoS34">
            <property role="3F0ifm" value=" " />
          </node>
          <node concept="pkWqt" id="49I2eEztfKy" role="3e4ffs">
            <node concept="3clFbS" id="49I2eEztfK$" role="2VODD2">
              <node concept="3clFbF" id="49I2eEztfMb" role="3cqZAp">
                <node concept="2OqwBi" id="49I2eEzthdz" role="3clFbG">
                  <node concept="2OqwBi" id="49I2eEztfZF" role="2Oq$k0">
                    <node concept="pncrf" id="49I2eEztfMa" role="2Oq$k0" />
                    <node concept="3TrcHB" id="49I2eEztgah" role="2OqNvi">
                      <ref role="3TsBF5" to="heqe:49I2eEzr1e4" resolve="frequency" />
                    </node>
                  </node>
                  <node concept="3y1jeu" id="49I2eEzthSk" role="2OqNvi">
                    <node concept="10Nm6u" id="49I2eEzthWK" role="3y1jev" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="49I2eEztfLZ" role="1QoVPY">
            <property role="3F0ifm" value="Hz" />
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="2RsYsllZBzL" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2RsYsllZNax">
    <ref role="1XX52x" to="heqe:2RsYsllZ3fn" resolve="App" />
    <node concept="3EZMnI" id="2RsYsllZNaz" role="2wV5jI">
      <node concept="3EZMnI" id="2RsYsllZNaE" role="3EZMnx">
        <node concept="VPM3Z" id="2RsYsllZNaG" role="3F10Kt" />
        <node concept="3F0ifn" id="2RsYsllZNcn" role="3EZMnx">
          <property role="3F0ifm" value="application" />
        </node>
        <node concept="3F0A7n" id="2RsYsllZNct" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="2RsYsllZNaJ" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="49I2eEzsvNg" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3EZMnI" id="49I2eEzsvPr" role="3EZMnx">
        <node concept="VPM3Z" id="49I2eEzsvPt" role="3F10Kt" />
        <node concept="3XFhqQ" id="49I2eEzsA22" role="3EZMnx" />
        <node concept="3F0ifn" id="49I2eEzsvPv" role="3EZMnx">
          <property role="3F0ifm" value="frequency" />
        </node>
        <node concept="3F0A7n" id="49I2eEzsvQi" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="default" />
          <ref role="1NtTu8" to="heqe:49I2eEzr88e" resolve="freq" />
        </node>
        <node concept="l2Vlx" id="49I2eEzsvPw" role="2iSdaV" />
        <node concept="1QoScp" id="49I2eEzt30P" role="3EZMnx">
          <property role="1QpmdY" value="true" />
          <node concept="3F0ifn" id="49I2eEzt34V" role="1QoS34">
            <property role="3F0ifm" value="Hz" />
          </node>
          <node concept="pkWqt" id="49I2eEzt30S" role="3e4ffs">
            <node concept="3clFbS" id="49I2eEzt30U" role="2VODD2">
              <node concept="3clFbF" id="49I2eEzt35a" role="3cqZAp">
                <node concept="3fqX7Q" id="49I2eEzt358" role="3clFbG">
                  <node concept="2OqwBi" id="49I2eEzt4$W" role="3fr31v">
                    <node concept="2OqwBi" id="49I2eEzt3kw" role="2Oq$k0">
                      <node concept="pncrf" id="49I2eEzt39t" role="2Oq$k0" />
                      <node concept="3TrcHB" id="49I2eEzt3$w" role="2OqNvi">
                        <ref role="3TsBF5" to="heqe:49I2eEzr88e" resolve="freq" />
                      </node>
                    </node>
                    <node concept="3y1jeu" id="49I2eEzt5jF" role="2OqNvi">
                      <node concept="10Nm6u" id="49I2eEzt5oe" role="3y1jev" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="35HoNQ" id="49I2eEzt350" role="1QoVPY" />
        </node>
      </node>
      <node concept="3F0ifn" id="2RsYsllZNaZ" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3EZMnI" id="2RsYsllZNbd" role="3EZMnx">
        <node concept="VPM3Z" id="2RsYsllZNbf" role="3F10Kt" />
        <node concept="3XFhqQ" id="2RsYsllZTIi" role="3EZMnx" />
        <node concept="3F2HdR" id="2RsYsllZTXM" role="3EZMnx">
          <ref role="1NtTu8" to="heqe:2RsYsllZ3fq" resolve="actuators" />
          <node concept="2iRkQZ" id="2RsYsllZTXP" role="2czzBx" />
          <node concept="VPM3Z" id="2RsYsllZTXQ" role="3F10Kt" />
          <node concept="3F0ifn" id="2RsYsllZTXV" role="2czzBI">
            <property role="3F0ifm" value="no actuators defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="2RsYsllZNbi" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="49I2eEzoIHA" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3EZMnI" id="49I2eEzoIGB" role="3EZMnx">
        <node concept="VPM3Z" id="49I2eEzoIGD" role="3F10Kt" />
        <node concept="3XFhqQ" id="49I2eEzoII6" role="3EZMnx" />
        <node concept="3F2HdR" id="49I2eEzoIIc" role="3EZMnx">
          <ref role="1NtTu8" to="heqe:49I2eEzmc1d" resolve="sensors" />
          <node concept="2iRkQZ" id="49I2eEzoIIf" role="2czzBx" />
          <node concept="VPM3Z" id="49I2eEzoIIg" role="3F10Kt" />
          <node concept="3F0ifn" id="49I2eEzoIIl" role="2czzBI">
            <property role="3F0ifm" value="no sensors defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="49I2eEzoIGG" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2RsYsllZNbC" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3EZMnI" id="2RsYsllZNc0" role="3EZMnx">
        <node concept="VPM3Z" id="2RsYsllZNc2" role="3F10Kt" />
        <node concept="3XFhqQ" id="2RsYsllZTXX" role="3EZMnx" />
        <node concept="3F2HdR" id="2RsYsllZTY3" role="3EZMnx">
          <ref role="1NtTu8" to="heqe:2RsYsllZ3fo" resolve="states" />
          <node concept="2iRkQZ" id="2RsYsllZTY6" role="2czzBx" />
          <node concept="VPM3Z" id="2RsYsllZTY7" role="3F10Kt" />
          <node concept="3F0ifn" id="2RsYsllZTYc" role="2czzBI">
            <property role="3F0ifm" value="no states defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="2RsYsllZNc5" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="49I2eEzoII4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="49I2eEzo$OM">
    <ref role="1XX52x" to="heqe:49I2eEzo$NW" resolve="Transition" />
    <node concept="3EZMnI" id="49I2eEzo$OO" role="2wV5jI">
      <node concept="3F0ifn" id="49I2eEzo$OY" role="3EZMnx">
        <property role="3F0ifm" value="Going to " />
      </node>
      <node concept="1iCGBv" id="49I2eEzo$Po" role="3EZMnx">
        <ref role="1NtTu8" to="heqe:49I2eEzo$Om" resolve="next" />
        <node concept="1sVBvm" id="49I2eEzo$Pq" role="1sWHZn">
          <node concept="3F0A7n" id="49I2eEzo$Py" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="49I2eEzo$OR" role="2iSdaV" />
      <node concept="3F0ifn" id="49I2eEzo$PM" role="3EZMnx">
        <property role="3F0ifm" value=" when " />
      </node>
      <node concept="1iCGBv" id="49I2eEzo$Q0" role="3EZMnx">
        <ref role="1NtTu8" to="heqe:49I2eEzo$Ok" resolve="trigger" />
        <node concept="1sVBvm" id="49I2eEzo$Q2" role="1sWHZn">
          <node concept="3F0A7n" id="49I2eEzo$Qe" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="49I2eEzo$Qr" role="3EZMnx">
        <property role="3F0ifm" value="is " />
      </node>
      <node concept="3F0A7n" id="49I2eEzo$QL" role="3EZMnx">
        <ref role="1NtTu8" to="heqe:49I2eEzo$Op" resolve="value" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="49I2eEzoR5u">
    <ref role="1XX52x" to="heqe:2RsYsllZ3fk" resolve="Sensor" />
    <node concept="3EZMnI" id="49I2eEzoR5w" role="2wV5jI">
      <node concept="3F0ifn" id="49I2eEzoR5B" role="3EZMnx">
        <property role="3F0ifm" value="sensor:" />
      </node>
      <node concept="3F0A7n" id="49I2eEzoR5H" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="49I2eEzoR5P" role="3EZMnx">
        <property role="3F0ifm" value="on pin" />
      </node>
      <node concept="3F0A7n" id="49I2eEzoR5Z" role="3EZMnx">
        <ref role="1NtTu8" to="heqe:49I2eEzmc1h" resolve="pin" />
      </node>
      <node concept="2iRfu4" id="49I2eEzoR5z" role="2iSdaV" />
    </node>
  </node>
</model>

