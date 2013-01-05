.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CallController"

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x1

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0xbb8

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

.field private mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 4
    .parameter "app"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 131
    :cond_1d
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    .line 132
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 133
    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1058
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1059
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForOtaspCall: handling OTASP intent! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_32

    .line 1071
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1072
    .local v0, sub:I
    invoke-static {p1, v0}, Lcom/android/phone/OtaUtils_DSDA;->setupOtaspCall(Landroid/content/Intent;I)V

    .line 1082
    .end local v0           #sub:I
    :cond_31
    :goto_31
    return-void

    .line 1074
    :cond_32
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    goto :goto_31

    .line 1080
    :cond_36
    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_31

    const-string v1, "checkForOtaspCall: not an OTASP call."

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_31
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .registers 5
    .parameter "state"

    .prologue
    .line 768
    packed-switch p1, :pswitch_data_28

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :pswitch_1c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 790
    :goto_1e
    return-object v0

    .line 775
    :pswitch_1f
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1e

    .line 786
    :pswitch_22
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1e

    .line 790
    :pswitch_25
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1e

    .line 768
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 828
    const/4 v1, 0x0

    .line 842
    :goto_b
    return-object v1

    .line 834
    :cond_c
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 835
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, actualNumberToDial:Ljava/lang/String;
    goto :goto_b

    .line 842
    .end local v1           #actualNumberToDial:Ljava/lang/String;
    :cond_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 858
    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOutgoingCallError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 859
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 867
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8e

    .line 944
    :pswitch_29
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 949
    :cond_46
    :goto_46
    return-void

    .line 871
    :pswitch_47
    const-string v1, "CallController"

    const-string v2, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 882
    :pswitch_4f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_46

    .line 894
    :pswitch_55
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_46

    .line 901
    :pswitch_5b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_46

    .line 906
    :pswitch_61
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_46

    .line 913
    :pswitch_67
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_46

    .line 929
    :pswitch_6d
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_46

    .line 930
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01cb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_46

    .line 940
    :pswitch_87
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_46

    .line 867
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_29
        :pswitch_4f
        :pswitch_55
        :pswitch_5b
        :pswitch_61
        :pswitch_67
        :pswitch_6d
        :pswitch_87
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;I)V
    .registers 7
    .parameter "status"
    .parameter "sub"

    .prologue
    .line 957
    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOutgoingCallError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 958
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 966
    .local v0, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_90

    .line 1043
    :pswitch_2b
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 1048
    :cond_48
    :goto_48
    return-void

    .line 970
    :pswitch_49
    const-string v1, "CallController"

    const-string v2, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 981
    :pswitch_51
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_48

    .line 993
    :pswitch_57
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_48

    .line 1000
    :pswitch_5d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_48

    .line 1005
    :pswitch_63
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_48

    .line 1012
    :pswitch_69
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_48

    .line 1028
    :pswitch_6f
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_48

    .line 1029
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01cb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_48

    .line 1039
    :pswitch_89
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1, p2}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    goto :goto_48

    .line 966
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_49
        :pswitch_2b
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_63
        :pswitch_69
        :pswitch_6f
        :pswitch_89
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;
    .registers 5
    .parameter "app"

    .prologue
    .line 115
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 116
    :try_start_3
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_12

    .line 117
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 121
    :goto_e
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 119
    :cond_12
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 122
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1090
    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .registers 27
    .parameter "intent"

    .prologue
    .line 390
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCallInternal()...  intent = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 398
    :cond_1c
    const-string v3, "subscription"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 400
    .local v21, sub:I
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_ad

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v14, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v14, Lcom/android/phone/MSimInCallUiState;

    .line 410
    .local v14, inCallUiState:Lcom/android/phone/InCallUiState;
    :goto_38
    const/4 v4, 0x0

    .line 416
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v18

    .line 428
    .local v18, okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    :try_start_51
    invoke-static/range {p1 .. p1}, Lcom/android/phone/CallController;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 438
    .local v22, uri:Landroid/net/Uri;
    if-eqz v22, :cond_b4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 439
    .local v19, scheme:Ljava/lang/String;
    :goto_5f
    const-string v3, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 448
    .local v20, sipPhoneUri:Ljava/lang/String;
    const-string v3, "android.phone.extra.CALL_TYPE"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 450
    .local v9, callType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v3, v0, v5, v1, v2}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 454
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_8b
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_51 .. :try_end_8b} :catch_b7

    move-result-object v18

    .line 470
    if-nez v5, :cond_d6

    .line 471
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "placeCall: couldn\'t get a phone number from Intent "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 752
    .end local v5           #number:Ljava/lang/String;
    .end local v9           #callType:I
    .end local v14           #inCallUiState:Lcom/android/phone/InCallUiState;
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #sipPhoneUri:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :goto_ac
    return-object v3

    .line 403
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    .end local v18           #okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    :cond_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v14, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .restart local v14       #inCallUiState:Lcom/android/phone/InCallUiState;
    goto :goto_38

    .line 438
    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v18       #okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_b4
    const/16 v19, 0x0

    goto :goto_5f

    .line 457
    .end local v5           #number:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_b7
    move-exception v11

    .line 462
    .local v11, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_ca

    .line 463
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_c7

    const-string v3, "Voicemail number not reachable in current SIM card state."

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_c7
    move-object/from16 v3, v18

    .line 464
    goto :goto_ac

    .line 466
    :cond_ca
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_d3

    const-string v3, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 467
    :cond_d3
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_ac

    .line 481
    .end local v11           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v9       #callType:I
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #sipPhoneUri:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v16

    .line 482
    .local v16, isEmergencyNumber:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    .line 484
    .local v17, isPotentialEmergencyNumber:Z
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 486
    .local v15, isEmergencyIntent:Z
    if-eqz v17, :cond_12b

    if-nez v15, :cond_12b

    .line 487
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Non-CALL_EMERGENCY Intent "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " attempted to call potential emergency number "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "."

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_ac

    .line 491
    :cond_12b
    if-nez v17, :cond_163

    if-eqz v15, :cond_163

    .line 492
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received CALL_EMERGENCY Intent "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " with non-potential-emergency number "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " -- failing call."

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 506
    :cond_163
    if-eqz v16, :cond_1ab

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_171

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_1ab

    .line 509
    :cond_171
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_18d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: Emergency number detected with status = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 510
    :cond_18d
    sget-object v18, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 511
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_1ab

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> UPDATING status to: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 514
    :cond_1ab
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_21c

    .line 517
    if-eqz v16, :cond_1fc

    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_1fc

    .line 518
    const-string v3, "CallController"

    const-string v7, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    monitor-enter p0

    .line 527
    :try_start_1c1
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_1e6

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;

    if-nez v3, :cond_1d8

    .line 529
    new-instance v3, Lcom/android/phone/EmergencyCallHelper_DSDA;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/android/phone/EmergencyCallHelper_DSDA;-><init>(Lcom/android/phone/CallController;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;

    .line 531
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper_DSDA:Lcom/android/phone/EmergencyCallHelper_DSDA;

    move/from16 v0, v21

    invoke-virtual {v3, v5, v0}, Lcom/android/phone/EmergencyCallHelper_DSDA;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;I)V

    .line 538
    :goto_1e1
    monitor-exit p0
    :try_end_1e2
    .catchall {:try_start_1c1 .. :try_end_1e2} :catchall_1f9

    .line 549
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 533
    :cond_1e6
    :try_start_1e6
    new-instance v3, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v3, v5}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    goto :goto_1e1

    .line 538
    :catchall_1f9
    move-exception v3

    monitor-exit p0
    :try_end_1fb
    .catchall {:try_start_1e6 .. :try_end_1fb} :catchall_1f9

    throw v3

    .line 553
    :cond_1fc
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_218

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCallInternal(): non-success status: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_218
    move-object/from16 v3, v18

    .line 554
    goto/16 :goto_ac

    .line 565
    :cond_21c
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_283

    move-object v3, v14

    .line 566
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v21

    move-object v3, v14

    .line 567
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/phone/MSimInCallUiState;->clearProgressIndication(I)V

    .line 579
    :goto_230
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 586
    .local v6, contactUri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_28a

    move-object v3, v14

    .line 587
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimProviderGatewayUri:[Landroid/net/Uri;

    aget-object v8, v3, v21

    .line 592
    .local v8, simProviderGatewayUri:Landroid/net/Uri;
    :goto_23f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    if-nez v16, :cond_249

    if-eqz v15, :cond_28d

    :cond_249
    const/4 v7, 0x1

    :goto_24a
    invoke-static/range {v3 .. v9}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v10

    .line 601
    .local v10, callStatus:I
    packed-switch v10, :pswitch_data_370

    .line 750
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "placeCall: unknown callStatus "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " from PhoneUtils.placeCall() for number \'"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "\'."

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 569
    .end local v6           #contactUri:Landroid/net/Uri;
    .end local v8           #simProviderGatewayUri:Landroid/net/Uri;
    .end local v10           #callStatus:I
    :cond_283
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    .line 570
    invoke-virtual {v14}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    goto :goto_230

    .line 589
    .restart local v6       #contactUri:Landroid/net/Uri;
    :cond_28a
    iget-object v8, v14, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .restart local v8       #simProviderGatewayUri:Landroid/net/Uri;
    goto :goto_23f

    .line 592
    :cond_28d
    const/4 v7, 0x0

    goto :goto_24a

    .line 618
    .restart local v10       #callStatus:I
    :pswitch_28f
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_311

    move-object v3, v14

    .line 619
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v13, v3, v21

    .line 626
    .local v13, inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    :goto_29a
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v13, v3, :cond_2a8

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v7, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 635
    :cond_2a8
    sget-boolean v3, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v3, :cond_2b1

    .line 638
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setLogNumber(Ljava/lang/String;Landroid/content/Intent;)V

    .line 648
    :cond_2b1
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_314

    move-object v3, v14

    .line 649
    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    iget-object v3, v3, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    const/4 v7, 0x0

    aput-boolean v7, v3, v21

    .line 668
    :goto_2bd
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_318

    .line 669
    check-cast v14, Lcom/android/phone/MSimInCallUiState;

    .end local v14           #inCallUiState:Lcom/android/phone/InCallUiState;
    iget-object v3, v14, Lcom/android/phone/MSimInCallUiState;->mSimDialpadDigits:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v21

    .line 682
    :goto_2c8
    const/4 v12, 0x0

    .line 683
    .local v12, exitedEcm:Z
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_2d9

    if-nez v16, :cond_2d9

    .line 684
    const-string v3, "CallController"

    const-string v7, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v12, 0x1

    .line 688
    :cond_2d9
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_30b

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v7, :cond_30b

    .line 696
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_31c

    .line 698
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 714
    :goto_2f7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 717
    const/4 v3, 0x1

    const-wide/16 v23, 0xbb8

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 723
    :cond_30b
    if-eqz v12, :cond_321

    .line 724
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 621
    .end local v12           #exitedEcm:Z
    .end local v13           #inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    .restart local v14       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_311
    iget-object v13, v14, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .restart local v13       #inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    goto :goto_29a

    .line 651
    :cond_314
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_2bd

    .line 671
    :cond_318
    const/4 v3, 0x0

    iput-object v3, v14, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    goto :goto_2c8

    .line 700
    .end local v14           #inCallUiState:Lcom/android/phone/InCallUiState;
    .restart local v12       #exitedEcm:Z
    :cond_31c
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_2f7

    .line 726
    :cond_321
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 730
    .end local v12           #exitedEcm:Z
    .end local v13           #inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    .restart local v14       #inCallUiState:Lcom/android/phone/InCallUiState;
    :pswitch_325
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_345

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\'."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 740
    :cond_345
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 743
    :pswitch_349
    const-string v3, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "\'."

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_ac

    .line 601
    nop

    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_28f
        :pswitch_325
        :pswitch_349
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 154
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1d
    :goto_1d
    return-void

    .line 141
    :pswitch_1e
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 143
    :cond_27
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1d

    .line 146
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_1d

    .line 138
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public placeCall(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall()...  intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 200
    if-nez p1, :cond_27

    .line 201
    const-string v8, "CallController"

    const-string v9, "placeCall: called with null intent"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "placeCall: called with null intent"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 210
    :cond_27
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v8, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 211
    .local v1, inCallUiState:Lcom/android/phone/InCallUiState;
    const-string v8, "subscription"

    iget-object v9, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 223
    .local v6, sub:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 225
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_50

    .line 226
    const-string v8, "CallController"

    const-string v9, "placeCall: intent had no data"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "placeCall: intent had no data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 230
    :cond_50
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, number:Ljava/lang/String;
    const-string v8, "android.intent.action.CALL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a5

    const-string v8, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a5

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a5

    .line 245
    const-string v8, "CallController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placeCall: unexpected intent action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 252
    :cond_a5
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 253
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 254
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    .line 265
    :cond_b6
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 273
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 274
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_102

    move-object v8, v1

    .line 275
    check-cast v8, Lcom/android/phone/MSimInCallUiState;

    invoke-virtual {v8, p1, v6}, Lcom/android/phone/MSimInCallUiState;->setProviderOverlayInfo(Landroid/content/Intent;I)V

    .line 289
    :goto_cc
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v5

    .line 291
    .local v5, status:Lcom/android/phone/Constants$CallStatusCode;
    sget-object v8, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v5}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_164

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 330
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_159

    .line 331
    invoke-direct {p0, v5, v6}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 366
    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    :goto_f8
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_15d

    .line 367
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v6}, Lcom/android/phone/PhoneApp;->displayCallScreen(I)V

    .line 374
    :goto_101
    return-void

    .line 277
    .end local v5           #status:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v1       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_102
    invoke-virtual {v1, p1}, Lcom/android/phone/InCallUiState;->setProviderOverlayInfo(Landroid/content/Intent;)V

    goto :goto_cc

    .line 280
    :cond_106
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_111

    move-object v8, v1

    .line 281
    check-cast v8, Lcom/android/phone/MSimInCallUiState;

    invoke-virtual {v8, v6}, Lcom/android/phone/MSimInCallUiState;->clearProviderOverlayInfo(I)V

    goto :goto_cc

    .line 283
    :cond_111
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProviderOverlayInfo()V

    goto :goto_cc

    .line 295
    .restart local v5       #status:Lcom/android/phone/Constants$CallStatusCode;
    :pswitch_115
    sget-boolean v8, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v8, :cond_12f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 299
    :cond_12f
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v5, v8, :cond_14b

    .line 302
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_145

    .line 303
    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v8, v6}, Lcom/android/phone/MSimInCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;I)V

    .line 320
    :goto_13e
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_f8

    .line 305
    .restart local v1       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_145
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v8}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_13e

    .line 311
    :cond_14b
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_155

    .line 312
    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {v1, v6}, Lcom/android/phone/MSimInCallUiState;->clearPendingCallStatusCode(I)V

    goto :goto_13e

    .line 314
    .restart local v1       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_155
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_13e

    .line 333
    :cond_159
    invoke-direct {p0, v5}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_f8

    .line 369
    .end local v1           #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_15d
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_101

    .line 291
    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_115
        :pswitch_115
    .end packed-switch
.end method
