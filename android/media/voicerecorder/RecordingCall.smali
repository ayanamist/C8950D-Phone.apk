.class public Landroid/media/voicerecorder/RecordingCall;
.super Ljava/lang/Object;
.source "RecordingCall.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "RecordingCall"

.field public static final PAUSE:I = 0x4

.field public static final RECORDING:I = 0x3


# instance fields
.field private call:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingCall:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recordingCallState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 13
    .parameter "mCM"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    .line 39
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    .line 45
    const-string v8, "RecordingCall"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Call"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    .line 51
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_61

    .line 52
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    .line 53
    .local v5, sub:I
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 54
    .local v4, iter:Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 55
    .local v6, tempCall:Lcom/android/internal/telephony/Call;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v7, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :cond_45
    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #tempCall:Lcom/android/internal/telephony/Call;
    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 59
    .restart local v6       #tempCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    if-ne v8, v5, :cond_45

    .line 60
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 64
    :cond_5f
    iput-object v7, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    .line 68
    .end local v4           #iter:Ljava/util/Iterator;
    .end local v5           #sub:I
    .end local v6           #tempCall:Lcom/android/internal/telephony/Call;
    .end local v7           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :cond_61
    const/4 v2, 0x0

    .local v2, i:I
    :goto_62
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_95

    .line 69
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->call:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 70
    .local v0, c:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_92

    .line 71
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 72
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    iget-object v8, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 68
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 76
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_95
    const-string v8, "RecordingCall"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRecordingCall"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/media/voicerecorder/RecordingCall;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method


# virtual methods
.method public delRecording(Ljava/lang/String;)V
    .registers 5
    .parameter "phoneNumber"

    .prologue
    .line 100
    const-string v0, "RecordingCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRecordingCall delRecording() phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p1, :cond_20

    .line 102
    iget-object v0, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 106
    :goto_1f
    return-void

    .line 104
    :cond_20
    const-string v0, "RecordingCall"

    const-string v1, "mRecordingCall delRecording() file, phoneNumber is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public equalRecordingCall(Ljava/util/List;)Ljava/lang/Boolean;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, call:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v8, 0x0

    .line 125
    invoke-virtual {p0}, Landroid/media/voicerecorder/RecordingCall;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, mRecordingString:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 127
    .local v0, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_63

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 129
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    const-string v5, "RecordingCall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAddress =:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, -0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_27

    .line 131
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 138
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_62
    return-object v5

    .line 135
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    :cond_63
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_62

    .line 138
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    :cond_68
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_62
.end method

.method public getRecordingCall()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRecordingCallState()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 91
    const-string v0, "RecordingCall"

    const-string v1, "mRecordingCall pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    .line 93
    return-void
.end method

.method public setRecordingCallState(I)V
    .registers 2
    .parameter "recordingCallState"

    .prologue
    .line 159
    iput p1, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    .line 160
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 83
    const-string v0, "RecordingCall"

    const-string v1, "mRecordingCall start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/voicerecorder/RecordingCall;->recordingCallState:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/media/voicerecorder/RecordingCall;->mRecordingCall:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 116
    .end local v2           #s:Ljava/lang/String;
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
