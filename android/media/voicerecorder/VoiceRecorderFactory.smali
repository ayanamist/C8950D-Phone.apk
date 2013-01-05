.class public Landroid/media/voicerecorder/VoiceRecorderFactory;
.super Ljava/lang/Object;
.source "VoiceRecorderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceRecorderFactory"

.field static final VOICEMEMO_DEVICE_NODE:Ljava/lang/String; = "/dev/msm_voicememo"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVoiceRecorder(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 8
    .parameter "cm"
    .parameter "inCallScreen"

    .prologue
    const/4 v4, 0x1

    .line 76
    new-instance v3, Ljava/io/File;

    const-string v5, "/dev/msm_voicememo"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, voiceFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_22

    move v2, v4

    .line 80
    .local v2, type:I
    :goto_f
    if-nez v2, :cond_24

    .line 81
    const-string v4, "VoiceRecorderFactory"

    const-string v5, "createVoiceRecorder()->ti platform"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 83
    .local v1, ti:Landroid/media/voicerecorder/TIVoiceRecorder;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/TIVoiceRecorder;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    move-object v0, v1

    .line 95
    .end local v1           #ti:Landroid/media/voicerecorder/TIVoiceRecorder;
    :goto_21
    return-object v0

    .line 78
    .end local v2           #type:I
    :cond_22
    const/4 v2, 0x0

    goto :goto_f

    .line 87
    .restart local v2       #type:I
    :cond_24
    if-ne v2, v4, :cond_2f

    .line 88
    new-instance v0, Landroid/media/voicerecorder/QCVoiceRecorder;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/QCVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 89
    .local v0, qc:Landroid/media/voicerecorder/QCVoiceRecorder;
    invoke-virtual {v0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    goto :goto_21

    .line 93
    .end local v0           #qc:Landroid/media/voicerecorder/QCVoiceRecorder;
    :cond_2f
    new-instance v0, Landroid/media/voicerecorder/QCVoiceRecorder;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/QCVoiceRecorder;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 94
    .restart local v0       #qc:Landroid/media/voicerecorder/QCVoiceRecorder;
    invoke-virtual {v0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    goto :goto_21
.end method

.method public static createVoiceRecorder(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen_DSDA;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 8
    .parameter "cm"
    .parameter "inCallScreen"

    .prologue
    const/4 v4, 0x1

    .line 52
    new-instance v3, Ljava/io/File;

    const-string v5, "/dev/msm_voicememo"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, voiceFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_22

    move v2, v4

    .line 56
    .local v2, type:I
    :goto_f
    if-nez v2, :cond_24

    .line 57
    const-string v4, "VoiceRecorderFactory"

    const-string v5, "createVoiceRecorder()->ti platform"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 59
    .local v1, ti:Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    move-object v0, v1

    .line 71
    .end local v1           #ti:Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
    :goto_21
    return-object v0

    .line 54
    .end local v2           #type:I
    :cond_22
    const/4 v2, 0x0

    goto :goto_f

    .line 63
    .restart local v2       #type:I
    :cond_24
    if-ne v2, v4, :cond_2f

    .line 64
    new-instance v0, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 65
    .local v0, qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    invoke-virtual {v0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_21

    .line 69
    .end local v0           #qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    :cond_2f
    new-instance v0, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;

    invoke-direct {v0, p0}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 70
    .restart local v0       #qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    invoke-virtual {v0, p1}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_21
.end method

.method public static createVoiceRecorder_DSDA(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen_DSDA;ILcom/android/internal/telephony/Phone;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 12
    .parameter "cm"
    .parameter "inCallScreen"
    .parameter "subscription"
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-interface {p3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 29
    .local v0, phoneType:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_34

    move v3, v4

    .line 30
    .local v3, type:I
    :goto_9
    const-string v5, "VoiceRecorderFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoiceRecorderFactory type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-nez v3, :cond_36

    .line 33
    const-string v4, "VoiceRecorderFactory"

    const-string v5, "createVoiceRecorder()->ti platform"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v2, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;

    invoke-direct {v2, p0, p2}, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;I)V

    .line 35
    .local v2, ti:Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
    invoke-virtual {v2, p1}, Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    move-object v1, v2

    .line 47
    .end local v2           #ti:Landroid/media/voicerecorder/TIVoiceRecorder_DSDA;
    :goto_33
    return-object v1

    .line 29
    .end local v3           #type:I
    :cond_34
    const/4 v3, 0x0

    goto :goto_9

    .line 39
    .restart local v3       #type:I
    :cond_36
    if-ne v3, v4, :cond_41

    .line 40
    new-instance v1, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 41
    .local v1, qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_33

    .line 45
    .end local v1           #qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    :cond_41
    new-instance v1, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;

    invoke-direct {v1, p0}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    .line 46
    .restart local v1       #qc:Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;
    invoke-virtual {v1, p1}, Landroid/media/voicerecorder/QCVoiceRecorder_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallScreen_DSDA;)V

    goto :goto_33
.end method
