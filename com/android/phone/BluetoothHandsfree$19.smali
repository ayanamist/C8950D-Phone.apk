.class Lcom/android/phone/BluetoothHandsfree$19;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 2784
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 15
    .parameter "args"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2789
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2790
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2791
    .local v3, phoneType:I
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    .line 2793
    .local v7, sub:I
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8, v7}, Lcom/android/phone/BluetoothHandsfree;->access$8400(Lcom/android/phone/BluetoothHandsfree;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2794
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8, v7}, Lcom/android/phone/BluetoothHandsfree;->access$8500(Lcom/android/phone/BluetoothHandsfree;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2797
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8, v7}, Lcom/android/phone/BluetoothHandsfree;->access$8600(Lcom/android/phone/BluetoothHandsfree;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2801
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    array-length v8, p1

    if-lt v8, v10, :cond_1fd

    .line 2802
    aget-object v8, p1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 2804
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8, v10}, Lcom/android/phone/BluetoothHandsfree;->access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2805
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 2806
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 2810
    .local v4, result:Z
    :goto_41
    if-eqz v4, :cond_4e

    .line 2811
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2963
    .end local v4           #result:Z
    :goto_48
    return-object v8

    .line 2808
    :cond_49
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .restart local v4       #result:Z
    goto :goto_41

    .line 2813
    :cond_4e
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_48

    .line 2815
    .end local v4           #result:Z
    :cond_54
    aget-object v8, p1, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 2816
    if-ne v3, v12, :cond_a8

    .line 2817
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 2822
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_9a

    .line 2823
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->hasActiveSIPCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 2831
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v8

    if-eqz v8, :cond_87

    const-string v8, "internalAnswerCall: answer CDMA incoming and end SIP ongoing"

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Ljava/lang/String;)V

    .line 2833
    :cond_87
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 2849
    :goto_90
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_48

    .line 2835
    :cond_96
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_90

    .line 2838
    :cond_9a
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_90

    .line 2847
    :cond_9e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_90

    .line 2850
    :cond_a8
    if-ne v3, v10, :cond_ee

    .line 2851
    const/4 v4, 0x0

    .line 2852
    .restart local v4       #result:Z
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8, v10}, Lcom/android/phone/BluetoothHandsfree;->access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2862
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 2864
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 2875
    :cond_c4
    :goto_c4
    if-eqz v4, :cond_e7

    .line 2876
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_48

    .line 2866
    :cond_cd
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 2867
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    goto :goto_c4

    .line 2869
    :cond_d8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 2871
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2872
    const/4 v4, 0x1

    goto :goto_c4

    .line 2878
    :cond_e7
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_48

    .line 2883
    .end local v4           #result:Z
    :cond_ee
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2885
    :cond_107
    aget-object v8, p1, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17a

    .line 2886
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v9, "OK"

    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2887
    if-ne v3, v12, :cond_15b

    .line 2893
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_144

    .line 2895
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2898
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_140

    .line 2899
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v8

    invoke-static {v11, v8}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 2906
    :goto_134
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v8, v10}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2920
    :cond_139
    :goto_139
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_48

    .line 2901
    :cond_140
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_134

    .line 2907
    :cond_144
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_139

    .line 2911
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2913
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v8}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_139

    .line 2915
    :cond_15b
    if-ne v3, v10, :cond_161

    .line 2916
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_139

    .line 2918
    :cond_161
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2921
    :cond_17a
    aget-object v8, p1, v11

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1fd

    .line 2922
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v9, "OK"

    invoke-static {v8, v9}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2923
    if-ne v3, v12, :cond_1c2

    .line 2924
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    .line 2927
    .local v6, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v8, :cond_1b4

    .line 2931
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_1b0

    .line 2932
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->mergeCalls(I)V

    .line 2960
    .end local v6           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1a9
    :goto_1a9
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_48

    .line 2934
    .restart local v6       #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1b0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_1a9

    .line 2938
    :cond_1b4
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v8, :cond_1a9

    .line 2941
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$8700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_1a9

    .line 2943
    .end local v6           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1c2
    if-ne v3, v10, :cond_1e4

    .line 2946
    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$6700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v8

    if-eqz v8, :cond_1a9

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$7300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v8

    if-eqz v8, :cond_1a9

    .line 2949
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_1e0

    .line 2950
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->mergeCalls(I)V

    goto :goto_1a9

    .line 2952
    :cond_1e0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_1a9

    .line 2958
    :cond_1e4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2963
    :cond_1fd
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_48
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 2969
    const-string v1, "service.brcm.bt.3way_support"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2970
    .local v0, threeWaySupport:Ljava/lang/String;
    if-eqz v0, :cond_1f

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 2971
    const-string v1, "3 way call not supported"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Ljava/lang/String;)V

    .line 2972
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const-string v2, "+CHLD: (0,1,2)"

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 2996
    :goto_1e
    return-object v1

    .line 2975
    :cond_1f
    const-string v1, "3 way call supported"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Ljava/lang/String;)V

    .line 2976
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2977
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "+CHLD: (0,1,2,3)"

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2978
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2981
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2983
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2984
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2996
    :cond_4a
    :goto_4a
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1e

    .line 2987
    :cond_51
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2991
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_4a
.end method
