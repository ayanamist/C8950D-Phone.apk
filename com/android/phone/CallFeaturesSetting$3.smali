.class Lcom/android/phone/CallFeaturesSetting$3;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1121
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4e

    .line 1139
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v2, v2, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4c

    :cond_15
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v2, v2, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_23
    const/4 v0, 0x1

    .line 1142
    .local v0, done:Z
    :goto_24
    if-eqz v0, :cond_32

    .line 1144
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v3, 0x25b

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1145
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v2}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 1147
    :cond_32
    return-void

    .line 1123
    .end local v0           #done:Z
    :pswitch_33
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object v1, v2, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    goto :goto_9

    .line 1127
    :pswitch_38
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    goto :goto_9

    .line 1139
    :cond_4c
    const/4 v0, 0x0

    goto :goto_24

    .line 1121
    :pswitch_data_4e
    .packed-switch 0x1f4
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method
