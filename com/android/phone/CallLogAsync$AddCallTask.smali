.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .registers 16
    .parameter "callList"

    .prologue
    .line 224
    array-length v10, p1

    .line 225
    .local v10, count:I
    new-array v13, v10, [Landroid/net/Uri;

    .line 226
    .local v13, result:[Landroid/net/Uri;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    if-ge v12, v10, :cond_4c

    .line 227
    aget-object v9, p1, v12

    .line 233
    .local v9, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :try_start_8
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 234
    iget-object v0, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v3, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v4, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v5, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v7, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    iget v8, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    invoke-static/range {v0 .. v8}, Landroid/provider/CallLog$Calls;->addCallWithSub(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v13, v12

    .line 226
    :goto_28
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 238
    :cond_2b
    iget-object v0, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v3, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v4, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v5, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v7, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v0 .. v7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v13, v12
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3f} :catch_40

    goto :goto_28

    .line 243
    :catch_40
    move-exception v11

    .line 244
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "CallLogAsync"

    const-string v1, "AddCallTask occur exception: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 249
    .end local v9           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_4c
    return-object v13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 257
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 258
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_10

    .line 259
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 262
    .end local v3           #uri:Landroid/net/Uri;
    :cond_13
    return-void
.end method
