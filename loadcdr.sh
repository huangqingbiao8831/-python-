#!/bin/bash
i=0
counter=0
while((counter <= 10000)) 
do
   #sleep 3
   counter=$((counter+1))
   if [[ "$counter" -gt 5 ]];then
      sleep 1
      counter=0
   else
    curl -H "Accept: Content-type:text/xml" -X POST -d 'cdr=<?xml version=\"1.0\"?>
<cdr core-uuid="8c64e881-4cd8-4bce-a613-bead517f70a0" switchname="kvm81_20">
  <channel_data>
    <state>CS_REPORTING</state>
    <direction>inbound</direction>
    <state_number>11</state_number>
    <flags>0=1;1=1;3=1;37=1;38=1;40=1;43=1;53=1;75=1;95=1;112=1;113=1;122=1</flags>
    <caps>1=1;2=1;3=1;4=1;5=1;6=1</caps>
  </channel_data>
  <call-stats>
    <audio>
      <inbound>
        <raw_bytes>1242872</raw_bytes>
        <media_bytes>1237712</media_bytes>
        <packet_count>7226</packet_count>
        <media_packet_count>7196</media_packet_count>
        <skip_packet_count>5100</skip_packet_count>
        <jitter_packet_count>0</jitter_packet_count>
        <dtmf_packet_count>0</dtmf_packet_count>
        <cng_packet_count>0</cng_packet_count>
        <flush_packet_count>30</flush_packet_count>
        <largest_jb_size>0</largest_jb_size>
        <jitter_min_variance>109.00</jitter_min_variance>
        <jitter_max_variance>1144.21</jitter_max_variance>
        <jitter_loss_rate>0.46</jitter_loss_rate>
        <jitter_burst_rate>0.76</jitter_burst_rate>
        <mean_interval>29.52</mean_interval>
        <flaw_total>3795</flaw_total>
        <quality_percentage>49.00</quality_percentage>
        <mos>2.52</mos>
      </inbound>
      <outbound>
        <raw_bytes>395256</raw_bytes>
        <media_bytes>395256</media_bytes>
        <packet_count>2298</packet_count>
        <media_packet_count>2298</media_packet_count>
        <skip_packet_count>0</skip_packet_count>
        <dtmf_packet_count>0</dtmf_packet_count>
        <cng_packet_count>0</cng_packet_count>
        <rtcp_packet_count>0</rtcp_packet_count>
        <rtcp_octet_count>0</rtcp_octet_count>
      </outbound>
      <error-log>
        <error-period>
          <start>1609983781893302</start>
          <stop>1609984004593299</stop>
          <flaws>3794</flaws>
          <consecutive-flaws>513</consecutive-flaws>
          <duration-msec>222699</duration-msec>
        </error-period>
      </error-log>
    </audio>
  </call-stats>
  <variables>
    <direction>inbound</direction>
    <uuid>8039fb4f-e1c9-4def-b097-7c71435bb73c</uuid>
    <session_id>9847</session_id>
    <sip_from_user>10086</sip_from_user>
    <sip_from_uri>10086%4010.21.19.32</sip_from_uri>
    <sip_from_host>10.21.19.32</sip_from_host>
    <video_media_flow>sendrecv</video_media_flow>
    <channel_name>sofia/internal/10086%4010.21.19.32</channel_name>
    <ep_codec_string>CORE_PCM_MODULE.PCMU%408000h%4020i%4064000b,CORE_PCM_MODULE.PCMA%408000h%4020i%4064000b</ep_codec_string>
    <sip_local_network_addr>10.21.19.20</sip_local_network_addr>
    <sip_network_ip>10.21.19.32</sip_network_ip>
    <sip_network_port>5080</sip_network_port>
    <sip_invite_stamp>1609983740433306</sip_invite_stamp>
    <sip_received_ip>10.21.19.32</sip_received_ip>
    <sip_received_port>5080</sip_received_port>
    <sip_via_protocol>udp</sip_via_protocol>
    <sip_authorized>true</sip_authorized>
    <sip_acl_authed_by>domains</sip_acl_authed_by>
    <sip_from_user_stripped>10086</sip_from_user_stripped>
    <sofia_profile_name>internal</sofia_profile_name>
    <recovery_profile_name>internal</recovery_profile_name>
    <sip_Remote-Party-ID>%3Csip%3A10086%4010.21.19.32%3E%3Bparty%3Dcalling%3Bscreen%3Dyes%3Bprivacy%3Doff</sip_Remote-Party-ID>
    <sip_cid_type>rpid</sip_cid_type>
    <sip_allow>INVITE,%20ACK,%20BYE,%20CANCEL,%20OPTIONS,%20MESSAGE,%20INFO,%20UPDATE,%20REGISTER,%20REFER,%20NOTIFY</sip_allow>
    <sip_req_user>60019</sip_req_user>
    <sip_req_port>5060</sip_req_port>
    <sip_req_uri>60019%4010.21.19.20%3A5060</sip_req_uri>
    <sip_req_host>10.21.19.20</sip_req_host>
    <sip_to_user>60019</sip_to_user>
    <sip_to_port>5060</sip_to_port>
    <sip_to_uri>60019%4010.21.19.20%3A5060</sip_to_uri>
    <sip_to_host>10.21.19.20</sip_to_host>
    <sip_contact_params>transport%3Dudp%3Bgw%3Dgw</sip_contact_params>
    <sip_contact_user>gw%2Bgw</sip_contact_user>
    <sip_contact_port>5080</sip_contact_port>
    <sip_contact_uri>gw%2Bgw%4010.21.19.32%3A5080</sip_contact_uri>
    <sip_contact_host>10.21.19.32</sip_contact_host>
    <sip_user_agent>FreeSWITCH-mod_sofia/1.6.20%2Bgit~20190408T030137Z~3effa38456~64bit</sip_user_agent>
    <sip_via_host>10.21.19.32</sip_via_host>
    <sip_via_port>5080</sip_via_port>
    <sip_via_rport>5080</sip_via_rport>
    <max_forwards>70</max_forwards>
    <presence_id>10086%4010.21.19.32</presence_id>
    <switch_r_sdp>v%3D0%0D%0Ao%3DFreeSWITCH%201609972872%201609972873%20IN%20IP4%2010.21.19.32%0D%0As%3DFreeSWITCH%0D%0Ac%3DIN%20IP4%2010.21.19.32%0D%0At%3D0%200%0D%0Am%3Daudio%2010868%20RTP/AVP%200%208%0D%0Aa%3Drtpmap%3A0%20PCMU/8000%0D%0Aa%3Drtpmap%3A8%20PCMA/8000%0D%0Aa%3Dptime%3A20%0D%0A</switch_r_sdp>
    <DP_MATCH>60019</DP_MATCH>
    <DP_MATCH>60019</DP_MATCH>
    <call_uuid>8039fb4f-e1c9-4def-b097-7c71435bb73c</call_uuid>
    <service_number>60019</service_number>
    <rtp_use_codec_string>PCMU,PCMA</rtp_use_codec_string>
    <audio_media_flow>sendrecv</audio_media_flow>
    <rtp_audio_recv_pt>0</rtp_audio_recv_pt>
    <rtp_use_codec_name>PCMU</rtp_use_codec_name>
    <rtp_use_codec_rate>8000</rtp_use_codec_rate>
    <rtp_use_codec_ptime>20</rtp_use_codec_ptime>
    <rtp_use_codec_channels>1</rtp_use_codec_channels>
    <rtp_last_audio_codec_string>PCMU%408000h%4020i%401c</rtp_last_audio_codec_string>
    <read_codec>PCMU</read_codec>
    <original_read_codec>PCMU</original_read_codec>
    <read_rate>8000</read_rate>
    <original_read_rate>8000</original_read_rate>
    <write_codec>PCMU</write_codec>
    <write_rate>8000</write_rate>
    <local_media_ip>10.21.19.20</local_media_ip>
    <local_media_port>20788</local_media_port>
    <advertised_media_ip>10.21.19.20</advertised_media_ip>
    <rtp_use_timer_name>soft</rtp_use_timer_name>
    <rtp_use_pt>0</rtp_use_pt>
    <rtp_use_ssrc>93514140</rtp_use_ssrc>
    <rtp_2833_send_payload>101</rtp_2833_send_payload>
    <rtp_2833_recv_payload>101</rtp_2833_recv_payload>
    <remote_media_ip>10.21.19.32</remote_media_ip>
    <remote_media_port>10868</remote_media_port>
    <dtmf_type>inband</dtmf_type>
    <tts_engine>tts_commandline</tts_engine>
    <tts_voice>Ting-Ting</tts_voice>
    <rtp_local_sdp_str>v%3D0%0D%0Ao%3DFreeSWITCH%201609962953%201609962955%20IN%20IP4%2010.21.19.20%0D%0As%3DFreeSWITCH%0D%0Ac%3DIN%20IP4%2010.21.19.20%0D%0At%3D0%200%0D%0Am%3Daudio%2020788%20RTP/AVP%200%20101%0D%0Aa%3Drtpmap%3A0%20PCMU/8000%0D%0Aa%3Drtpmap%3A101%20telephone-event/8000%0D%0Aa%3Dfmtp%3A101%200-16%0D%0Aa%3Dptime%3A20%0D%0Aa%3Dsendrecv%0D%0A</rtp_local_sdp_str>
    <endpoint_disposition>ANSWER</endpoint_disposition>
    <nolocal:req_uuid>8039fb4f-e1c9-4def-b097-7c71435bb73c</nolocal:req_uuid>
    <export_vars>nolocal%3Areq_uuid</export_vars>
    <current_application_data>main.lua%20http%3A//10.21.19.23%3A8084/config_manage//IVR/getXml/118%20118</current_application_data>
    <current_application>lua</current_application>
    <ai_ivr_session_id>c22b6ac4-ca74-4f99-8790-5919a28eea49</ai_ivr_session_id>
    <sip_to_tag>Ke5yFa78QXK7F</sip_to_tag>
    <sip_from_tag>QDX8HNeNHr5mm</sip_from_tag>
    <sip_cseq>30438078</sip_cseq>
    <sip_call_id>6c16cace-cb2c-1239-d989-52540035a879</sip_call_id>
    <sip_full_via>SIP/2.0/UDP%2010.21.19.32%3A5080%3Brport%3D5080%3Bbranch%3Dz9hG4bKS709ggtpjDaBK</sip_full_via>
    <sip_full_from>%22%22%20%3Csip%3A10086%4010.21.19.32%3E%3Btag%3DQDX8HNeNHr5mm</sip_full_from>
    <sip_full_to>%3Csip%3A60019%4010.21.19.20%3A5060%3E%3Btag%3DKe5yFa78QXK7F</sip_full_to>
    <read_result>failure</read_result>
    <playback_last_offset_pos>14900</playback_last_offset_pos>
    <playback_seconds>1</playback_seconds>
    <playback_ms>1862</playback_ms>
    <playback_samples>14900</playback_samples>
    <hangup_cause>NORMAL_CLEARING</hangup_cause>
    <hangup_cause_q850>16</hangup_cause_q850>
    <digits_dialed>none</digits_dialed>
    <start_stamp>2021-01-07%2009%3A42%3A20</start_stamp>
    <profile_start_stamp>2021-01-07%2009%3A42%3A20</profile_start_stamp>
    <answer_stamp>2021-01-07%2009%3A42%3A21</answer_stamp>
    <progress_media_stamp>2021-01-07%2009%3A42%3A21</progress_media_stamp>
    <end_stamp>2021-01-07%2009%3A46%3A44</end_stamp>
    <start_epoch>1609983740</start_epoch>
    <start_uepoch>1609983740553303</start_uepoch>
    <profile_start_epoch>1609983740</profile_start_epoch>
    <profile_start_uepoch>1609983740553303</profile_start_uepoch>
    <answer_epoch>1609983741</answer_epoch>
    <answer_uepoch>1609983741993409</answer_uepoch>
    <bridge_epoch>0</bridge_epoch>
    <bridge_uepoch>0</bridge_uepoch>
    <last_hold_epoch>0</last_hold_epoch>
    <last_hold_uepoch>0</last_hold_uepoch>
    <hold_accum_seconds>0</hold_accum_seconds>
    <hold_accum_usec>0</hold_accum_usec>
    <hold_accum_ms>0</hold_accum_ms>
    <resurrect_epoch>0</resurrect_epoch>
    <resurrect_uepoch>0</resurrect_uepoch>
    <progress_epoch>0</progress_epoch>
    <progress_uepoch>0</progress_uepoch>
    <progress_media_epoch>1609983741</progress_media_epoch>
    <progress_media_uepoch>1609983741853304</progress_media_uepoch>
    <end_epoch>1609984004</end_epoch>
    <end_uepoch>1609984004593299</end_uepoch>
    <last_app>lua</last_app>
    <last_arg>main.lua%20http%3A//10.21.19.23%3A8084/config_manage//IVR/getXml/118%20118</last_arg>
    <caller_id>10086</caller_id>
    <duration>264</duration>
    <billsec>263</billsec>
    <progresssec>0</progresssec>
    <answersec>1</answersec>
    <waitsec>0</waitsec>
    <progress_mediasec>1</progress_mediasec>
    <flow_billsec>264</flow_billsec>
    <mduration>264040</mduration>
    <billmsec>262600</billmsec>
    <progressmsec>0</progressmsec>
    <answermsec>1440</answermsec>
    <waitmsec>0</waitmsec>
    <progress_mediamsec>1300</progress_mediamsec>
    <flow_billmsec>264040</flow_billmsec>
    <uduration>264039996</uduration>
    <billusec>262599890</billusec>
    <progressusec>0</progressusec>
    <answerusec>1440106</answerusec>
    <waitusec>0</waitusec>
    <progress_mediausec>1300001</progress_mediausec>
    <flow_billusec>264039996</flow_billusec>
    <sip_hangup_disposition>send_bye</sip_hangup_disposition>
    <rtp_audio_in_raw_bytes>1242872</rtp_audio_in_raw_bytes>
    <rtp_audio_in_media_bytes>1237712</rtp_audio_in_media_bytes>
    <rtp_audio_in_packet_count>7226</rtp_audio_in_packet_count>
    <rtp_audio_in_media_packet_count>7196</rtp_audio_in_media_packet_count>
    <rtp_audio_in_skip_packet_count>5100</rtp_audio_in_skip_packet_count>
    <rtp_audio_in_jitter_packet_count>0</rtp_audio_in_jitter_packet_count>
    <rtp_audio_in_dtmf_packet_count>0</rtp_audio_in_dtmf_packet_count>
    <rtp_audio_in_cng_packet_count>0</rtp_audio_in_cng_packet_count>
    <rtp_audio_in_flush_packet_count>30</rtp_audio_in_flush_packet_count>
    <rtp_audio_in_largest_jb_size>0</rtp_audio_in_largest_jb_size>
    <rtp_audio_in_jitter_min_variance>109.00</rtp_audio_in_jitter_min_variance>
    <rtp_audio_in_jitter_max_variance>1144.21</rtp_audio_in_jitter_max_variance>
    <rtp_audio_in_jitter_loss_rate>0.46</rtp_audio_in_jitter_loss_rate>
    <rtp_audio_in_jitter_burst_rate>0.76</rtp_audio_in_jitter_burst_rate>
    <rtp_audio_in_mean_interval>29.52</rtp_audio_in_mean_interval>
    <rtp_audio_in_flaw_total>3795</rtp_audio_in_flaw_total>
    <rtp_audio_in_quality_percentage>49.00</rtp_audio_in_quality_percentage>
    <rtp_audio_in_mos>2.52</rtp_audio_in_mos>
    <rtp_audio_out_raw_bytes>395256</rtp_audio_out_raw_bytes>
    <rtp_audio_out_media_bytes>395256</rtp_audio_out_media_bytes>
    <rtp_audio_out_packet_count>2298</rtp_audio_out_packet_count>
    <rtp_audio_out_media_packet_count>2298</rtp_audio_out_media_packet_count>
    <rtp_audio_out_skip_packet_count>0</rtp_audio_out_skip_packet_count>
    <rtp_audio_out_dtmf_packet_count>0</rtp_audio_out_dtmf_packet_count>
    <rtp_audio_out_cng_packet_count>0</rtp_audio_out_cng_packet_count>
    <rtp_audio_rtcp_packet_count>0</rtp_audio_rtcp_packet_count>
    <rtp_audio_rtcp_octet_count>0</rtp_audio_rtcp_octet_count>
  </variables>
  <app_log>
    <application app_name="set" app_data="service_number=60019" app_stamp="1609983741736833"></application>
    <application app_name="set" app_data="tts_engine=tts_commandline" app_stamp="1609983741738340"></application>
    <application app_name="set" app_data="tts_voice=Ting-Ting" app_stamp="1609983741738543"></application>
    <application app_name="start_dtmf" app_data="" app_stamp="1609983741886969"></application>
    <application app_name="set" app_data="dtmf_type=inband" app_stamp="1609983741935859"></application>
    <application app_name="set" app_data="tts_engine=tts_commandline" app_stamp="1609983741955788"></application>
    <application app_name="set" app_data="tts_voice=Ting-Ting" app_stamp="1609983741960516"></application>
    <application app_name="answer" app_data="" app_stamp="1609983741995121"></application>
    <application app_name="wait_for_answer" app_data="" app_stamp="1609983742043613"></application>
    <application app_name="export" app_data="nolocal:req_uuid=8039fb4f-e1c9-4def-b097-7c71435bb73c" app_stamp="1609983742100016"></application>
    <application app_name="lua" app_data="main.lua http://10.21.19.23:8084/config_manage//IVR/getXml/118 118" app_stamp="1609983742140487"></application>
  </app_log>
  <callflow dialplan="XML" unique-id="5e0d25ee-c4bb-4d25-b96d-0d1813e56aa1" profile_index="1">
    <extension name="service_number" number="60019">
      <application app_name="set" app_data="service_number=${destination_number}"></application>
      <application app_name="set" app_data="tts_engine=tts_commandline"></application>
      <application app_name="set" app_data="tts_voice=Ting-Ting"></application>
      <application app_name="start_dtmf" app_data=""></application>
      <application app_name="set" app_data="dtmf_type=inband"></application>
      <application app_name="set" app_data="tts_engine=tts_commandline"></application>
      <application app_name="set" app_data="tts_voice=Ting-Ting"></application>
      <application app_name="answer" app_data=""></application>
      <application app_name="wait_for_answer" app_data=""></application>
      <application app_name="export" app_data="nolocal:req_uuid=${uuid}"></application>
      <application app_name="lua" app_data="main.lua http://10.21.19.23:8084/config_manage//IVR/getXml/118 118"></application>
    </extension>
    <caller_profile>
      <username>10086</username>
      <dialplan>XML</dialplan>
      <caller_id_name></caller_id_name>
      <caller_id_number>10086</caller_id_number>
      <callee_id_name></callee_id_name>
      <callee_id_number></callee_id_number>
      <ani>10086</ani>
      <aniii></aniii>
      <network_addr>10.21.19.32</network_addr>
      <rdnis></rdnis>
      <destination_number>60019</destination_number>
      <uuid>8039fb4f-e1c9-4def-b097-7c71435bb73c</uuid>
      <source>mod_sofia</source>
      <context>public</context>
      <chan_name>sofia/internal/10086@10.21.19.32</chan_name>
    </caller_profile>
    <times>
      <created_time>1609983740553303</created_time>
      <profile_created_time>1609983740553303</profile_created_time>
      <progress_time>0</progress_time>
      <progress_media_time>1609983741853304</progress_media_time>
      <answered_time>1609983741993409</answered_time>
      <bridged_time>0</bridged_time>
      <last_hold_time>0</last_hold_time>
      <hold_accum_time>0</hold_accum_time>
      <hangup_time>1609984004593299</hangup_time>
      <resurrect_time>0</resurrect_time>
      <transfer_time>0</transfer_time>
    </times>
  </callflow>
</cdr>' http://10.21.19.60:8080/oface
 fi
done
