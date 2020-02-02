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
        <child id="1402666108701864943" name="conditions" index="3SO3qb" />
      </concept>
      <concept id="3304790852529566677" name="ExternalDsl.structure.State" flags="ng" index="1S8cCg">
        <property id="4786773257798554500" name="frequency" index="3x0xHI" />
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
        <child id="1402666108702397052" name="errors" index="3SQdso" />
      </concept>
      <concept id="3304790852529566675" name="ExternalDsl.structure.Actuator" flags="ng" index="1S8cCm">
        <property id="3304790852529566695" name="pin" index="1S8cCy" />
      </concept>
      <concept id="3304790852529566708" name="ExternalDsl.structure.Action" flags="ng" index="1S8cCL">
        <property id="3304790852529566716" name="signal" index="1S8cCT" />
        <reference id="3304790852529566718" name="target" index="1S8cCV" />
      </concept>
      <concept id="1402666108701864938" name="ExternalDsl.structure.Condition" flags="ng" index="3SO3qe">
        <property id="1402666108701864939" name="value" index="3SO3qf" />
        <reference id="1402666108701864941" name="trigger" index="3SO3q9" />
      </concept>
      <concept id="1402666108702343322" name="ExternalDsl.structure.Error" flags="ng" index="3SQonY">
        <property id="1402666108702343353" name="name" index="3SQont" />
        <reference id="1402666108702749367" name="actu" index="3SKVvj" />
        <child id="1402666108702345874" name="conditions" index="3SQoZQ" />
      </concept>
    </language>
  </registry>
  <node concept="1S8cCi" id="1dRhmjFJ6Iy">
    <property role="TrG5h" value="scenario1-from-mps" />
    <node concept="1S8cCh" id="1dRhmjFJ6IS" role="3xdGyB">
      <property role="TrG5h" value="button" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6Iz" role="1S8cCt">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3x34gm" id="1dRhmjFJ6Ja" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6IY" resolve="alarm_off" />
        <node concept="3SO3qe" id="1dRhmjFJ6JA" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6IS" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Je" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6I_" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Jn" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6IJ" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6IY" role="1S8cCt">
      <property role="TrG5h" value="alarm_off" />
      <property role="1S8106" value="true" />
      <node concept="3x34gm" id="1dRhmjFJ6Jy" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6Iz" resolve="alarm_on" />
        <node concept="3SO3qe" id="1dRhmjFJ6JD" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6IS" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Jh" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6I_" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Ju" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6IJ" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6I_" role="1S8cCv">
      <property role="TrG5h" value="led" />
      <property role="1S8cCy" value="9" />
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6IJ" role="1S8cCv">
      <property role="TrG5h" value="buzzer" />
      <property role="1S8cCy" value="10" />
    </node>
  </node>
  <node concept="1S8cCi" id="1dRhmjFJ6JG">
    <property role="TrG5h" value="scenario2-from-mps" />
    <node concept="1S8cCh" id="1dRhmjFJ6K0" role="3xdGyB">
      <property role="TrG5h" value="button" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCh" id="1dRhmjFJ6K2" role="3xdGyB">
      <property role="TrG5h" value="joystickButton" />
      <property role="3xdGyV" value="11" />
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6JH" role="1S8cCt">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3x34gm" id="1dRhmjFJ6JW" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6IY" resolve="alarm_off" />
        <node concept="3SO3qe" id="1dRhmjFJ6K5" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6K2" resolve="joystickButton" />
        </node>
      </node>
      <node concept="3x34gm" id="1dRhmjFJ6K8" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6JK" resolve="alarm_off" />
        <node concept="3SO3qe" id="1dRhmjFJ6Ke" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6K0" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6JQ" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6JJ" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6JK" role="1S8cCt">
      <property role="TrG5h" value="alarm_off" />
      <property role="1S8106" value="true" />
      <node concept="3x34gm" id="1dRhmjFJ6Kh" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6JH" resolve="alarm_on" />
        <node concept="3SO3qe" id="1dRhmjFJ6Kr" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6K0" resolve="button" />
        </node>
        <node concept="3SO3qe" id="1dRhmjFJ6Kl" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6K2" resolve="joystickButton" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6JT" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6JJ" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6JJ" role="1S8cCv">
      <property role="TrG5h" value="buzzer" />
      <property role="1S8cCy" value="9" />
    </node>
  </node>
  <node concept="1S8cCi" id="1dRhmjFJ6Kv">
    <property role="TrG5h" value="scenario3-from-mps" />
    <node concept="1S8cCh" id="1dRhmjFJ6Kz" role="3xdGyB">
      <property role="TrG5h" value="button" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6Kw" role="1S8cCt">
      <property role="TrG5h" value="led_on" />
      <node concept="3x34gm" id="1dRhmjFJ6KL" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6Lb" resolve="led_off_temp" />
        <node concept="3SO3qe" id="1dRhmjFJ6KP" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6Kz" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6KF" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6Ky" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6KZ" role="1S8cCt">
      <property role="TrG5h" value="led_on_temp" />
      <node concept="3x34gm" id="1dRhmjFJ6LA" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6Kw" resolve="led_on" />
        <node concept="3SO3qe" id="1dRhmjFJ6LE" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6Kz" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Lp" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6Ky" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6K_" role="1S8cCt">
      <property role="TrG5h" value="led_off" />
      <property role="1S8106" value="true" />
      <node concept="3x34gm" id="1dRhmjFJ6KS" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6KZ" resolve="led_on_temp" />
        <node concept="3SO3qe" id="1dRhmjFJ6KW" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6Kz" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6KI" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6Ky" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6Lb" role="1S8cCt">
      <property role="TrG5h" value="led_off_temp" />
      <node concept="3x34gm" id="1dRhmjFJ6Lv" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6K_" resolve="led_off" />
        <node concept="3SO3qe" id="1dRhmjFJ6Lz" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6Kz" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Ls" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6Ky" resolve="led" />
      </node>
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6Ky" role="1S8cCv">
      <property role="TrG5h" value="led" />
      <property role="1S8cCy" value="9" />
    </node>
  </node>
  <node concept="1S8cCi" id="1dRhmjFJ6LH">
    <property role="TrG5h" value="scenario4-from-mps" />
    <node concept="1S8cCh" id="1dRhmjFJ6LO" role="3xdGyB">
      <property role="TrG5h" value="button" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6LI" role="1S8cCt">
      <property role="1S8106" value="true" />
      <property role="TrG5h" value="state_off" />
      <node concept="3x34gm" id="1dRhmjFJ6Na" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6M4" resolve="alarm_on_temp" />
        <node concept="3SO3qe" id="1dRhmjFJ6Ne" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6LO" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6LQ" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LK" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6LW" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LL" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6M4" role="1S8cCt">
      <property role="TrG5h" value="alarm_on_temp" />
      <node concept="3x34gm" id="1dRhmjFJ6Mz" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6Mp" resolve="alarm_on" />
        <node concept="3SO3qe" id="1dRhmjFJ6MB" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6LO" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Mb" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LK" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Mh" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6LL" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6Mp" role="1S8cCt">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3x34gm" id="1dRhmjFJ6N3" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6MO" resolve="led_on_temp" />
        <node concept="3SO3qe" id="1dRhmjFJ6N7" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6LO" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6ME" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LK" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6MK" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6LL" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6MO" role="1S8cCt">
      <property role="TrG5h" value="led_on_temp" />
      <node concept="3x34gm" id="1dRhmjFJ6Nr" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6Nv" resolve="led_on" />
        <node concept="3SO3qe" id="1dRhmjFJ6NR" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6LO" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Nh" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6LK" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Nn" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LL" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6Nv" role="1S8cCt">
      <property role="TrG5h" value="led_on" />
      <node concept="3x34gm" id="1dRhmjFJ6O4" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6O8" resolve="state_off_temp" />
        <node concept="3SO3qe" id="1dRhmjFJ6ON" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6LO" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6NU" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6LK" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6O0" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LL" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6O8" role="1S8cCt">
      <property role="TrG5h" value="state_off_temp" />
      <node concept="3x34gm" id="1dRhmjFJ6OJ" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6LI" resolve="state_off" />
        <node concept="3SO3qe" id="1dRhmjFJ6OQ" role="3SO3qb">
          <property role="3SO3qf" value="2RsYsllZ3fJ/LOW" />
          <ref role="3SO3q9" node="1dRhmjFJ6LO" resolve="button" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6O_" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LK" resolve="led" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6OF" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6LL" resolve="buzzer" />
      </node>
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6LK" role="1S8cCv">
      <property role="TrG5h" value="led" />
      <property role="1S8cCy" value="9" />
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6LL" role="1S8cCv">
      <property role="TrG5h" value="buzzer" />
      <property role="1S8cCy" value="8" />
    </node>
  </node>
  <node concept="1S8cCi" id="1dRhmjFJ6OT">
    <property role="TrG5h" value="extension1-from-mps" />
    <property role="3x0CF$" value="1" />
    <node concept="1S8cCh" id="1dRhmjFJ6P0" role="3xdGyB">
      <property role="TrG5h" value="button1" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCh" id="1dRhmjFJ6P8" role="3xdGyB">
      <property role="TrG5h" value="button2" />
      <property role="3xdGyV" value="11" />
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6OU" role="1S8cCt">
      <property role="TrG5h" value="slow_blink_1" />
      <node concept="3x34gm" id="1dRhmjFJ6Pw" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6PC" resolve="fast_blink_1" />
        <node concept="3SO3qe" id="1dRhmjFJ6Q$" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P8" resolve="button2" />
        </node>
      </node>
      <node concept="3x34gm" id="1dRhmjFJ6Qu" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6P2" resolve="slow_blink_2" />
        <node concept="3SO3qe" id="1dRhmjFJ6QB" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P0" resolve="button1" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Pb" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6OW" resolve="led1" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Ph" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6OX" resolve="led2" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6P2" role="1S8cCt">
      <property role="TrG5h" value="slow_blink_2" />
      <node concept="3x34gm" id="1dRhmjFJ6QE" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6PS" resolve="fast_blink_2" />
        <node concept="3SO3qe" id="1dRhmjFJ6QI" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P8" resolve="button2" />
        </node>
      </node>
      <node concept="3x34gm" id="1dRhmjFJ6QT" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6OU" resolve="slow_blink_1" />
        <node concept="3SO3qe" id="1dRhmjFJ6QZ" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P0" resolve="button1" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Po" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6OW" resolve="led1" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Ps" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6OX" resolve="led2" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6PC" role="1S8cCt">
      <property role="TrG5h" value="fast_blink_1" />
      <property role="1S8106" value="true" />
      <property role="3x0xHI" value="10" />
      <node concept="3x34gm" id="1dRhmjFJ6R2" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6OU" resolve="slow_blink_1" />
        <node concept="3SO3qe" id="1dRhmjFJ6R6" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P8" resolve="button2" />
        </node>
      </node>
      <node concept="3x34gm" id="1dRhmjFJ6R9" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6PS" resolve="fast_blink_2" />
        <node concept="3SO3qe" id="1dRhmjFJ6Rf" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P0" resolve="button1" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Qa" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6OW" resolve="led1" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Qg" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6OX" resolve="led2" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6PS" role="1S8cCt">
      <property role="TrG5h" value="fast_blink_2" />
      <property role="3x0xHI" value="10" />
      <node concept="3x34gm" id="1dRhmjFJ6Ri" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6P2" resolve="slow_blink_2" />
        <node concept="3SO3qe" id="1dRhmjFJ6Rs" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P8" resolve="button2" />
        </node>
      </node>
      <node concept="3x34gm" id="1dRhmjFJ6Rm" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6PC" resolve="fast_blink_1" />
        <node concept="3SO3qe" id="1dRhmjFJ6Rv" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6P0" resolve="button1" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Qk" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ6OW" resolve="led1" />
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ6Qq" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ6OX" resolve="led2" />
      </node>
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6OW" role="1S8cCv">
      <property role="TrG5h" value="led1" />
      <property role="1S8cCy" value="8" />
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6OX" role="1S8cCv">
      <property role="TrG5h" value="led2" />
      <property role="1S8cCy" value="9" />
    </node>
  </node>
  <node concept="1S8cCi" id="1dRhmjFJ6Ry">
    <property role="TrG5h" value="extension3-from-mps" />
    <node concept="3SQonY" id="1dRhmjFJ6RJ" role="3SQdso">
      <property role="3SQont" value="3" />
      <ref role="3SKVvj" node="1dRhmjFJ6R_" resolve="errorLed" />
      <node concept="3SO3qe" id="1dRhmjFJ6RY" role="3SQoZQ">
        <ref role="3SO3q9" node="1dRhmjFJ6RE" resolve="button1" />
      </node>
      <node concept="3SO3qe" id="1dRhmjFJ6S2" role="3SQoZQ">
        <ref role="3SO3q9" node="1dRhmjFJ6RG" resolve="button2" />
      </node>
    </node>
    <node concept="1S8cCh" id="1dRhmjFJ6RE" role="3xdGyB">
      <property role="TrG5h" value="button1" />
      <property role="3xdGyV" value="12" />
    </node>
    <node concept="1S8cCh" id="1dRhmjFJ6RG" role="3xdGyB">
      <property role="TrG5h" value="button2" />
      <property role="3xdGyV" value="11" />
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ6Rz" role="1S8cCt">
      <property role="TrG5h" value="led_on" />
      <node concept="3x34gm" id="1dRhmjFJ7r6" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ7ra" resolve="led_off" />
        <node concept="3SO3qe" id="1dRhmjFJ7rg" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6RE" resolve="button1" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ7r3" role="1S8cCM">
        <ref role="1S8cCV" node="1dRhmjFJ7qY" resolve="testLed" />
      </node>
    </node>
    <node concept="1S8cCg" id="1dRhmjFJ7ra" role="1S8cCt">
      <property role="TrG5h" value="led_off" />
      <property role="1S8106" value="true" />
      <node concept="3x34gm" id="1dRhmjFJ7ro" role="3x34ne">
        <ref role="3x34nW" node="1dRhmjFJ6Rz" resolve="led_on" />
        <node concept="3SO3qe" id="1dRhmjFJ7rs" role="3SO3qb">
          <ref role="3SO3q9" node="1dRhmjFJ6RE" resolve="button1" />
        </node>
      </node>
      <node concept="1S8cCL" id="1dRhmjFJ7rl" role="1S8cCM">
        <property role="1S8cCT" value="2RsYsllZ3fJ/LOW" />
        <ref role="1S8cCV" node="1dRhmjFJ7qY" resolve="testLed" />
      </node>
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ6R_" role="1S8cCv">
      <property role="TrG5h" value="errorLed" />
      <property role="1S8cCy" value="8" />
    </node>
    <node concept="1S8cCm" id="1dRhmjFJ7qY" role="1S8cCv">
      <property role="TrG5h" value="testLed" />
      <property role="1S8cCy" value="9" />
    </node>
  </node>
</model>

