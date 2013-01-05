.class public Lcom/android/phone/ims/ImsSharedPreferences;
.super Ljava/lang/Object;
.source "ImsSharedPreferences.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final IMS_SHARED_PREFERENCES:Ljava/lang/String; = "IMS_PREFERENCES"

.field private static final KEY_IMS_CALL_TYPE:Ljava/lang/String; = "ims_call_type"

.field private static final KEY_IMS_IS_DEFAULT:Ljava/lang/String; = "ims_is_default"

.field private static final KEY_IMS_SERVER_ADDRESS:Ljava/lang/String; = "ims_server_address"

.field private static final TAG:Ljava/lang/String; = "IMSPreferences"


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "IMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "IMS_PREFERENCES"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method


# virtual methods
.method public getCallType()I
    .registers 5

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ims_call_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, callType:I
    sget-boolean v1, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    if-eqz v1, :cond_25

    const-string v1, "IMSPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_25
    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ims_server_address"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, address:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    if-eqz v1, :cond_25

    const-string v1, "IMSPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_25
    return-object v0
.end method

.method public getisImsDefault()Z
    .registers 5

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ims_is_default"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, isImsDefault:Z
    sget-boolean v1, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    if-eqz v1, :cond_25

    const-string v1, "IMSPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getisImsDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_25
    return v0
.end method

.method public setCallType(I)V
    .registers 6
    .parameter "callType"

    .prologue
    .line 61
    sget-boolean v1, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    if-eqz v1, :cond_1c

    const-string v1, "IMSPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ims_call_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method

.method public setIsImsDefault(Z)V
    .registers 6
    .parameter "isImsDefault"

    .prologue
    .line 80
    sget-boolean v1, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    if-eqz v1, :cond_1c

    const-string v1, "IMSPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsImsDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ims_is_default"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 48
    sget-boolean v1, Lcom/android/phone/ims/ImsSharedPreferences;->DBG:Z

    if-eqz v1, :cond_1c

    const-string v1, "IMSPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServerAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/ims/ImsSharedPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ims_server_address"

    if-nez p1, :cond_28

    const-string p1, ""

    .end local p1
    :cond_28
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method
