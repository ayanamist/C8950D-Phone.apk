.class Lcom/android/phone/CallFeaturesSetting$2;
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
    .line 1057
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1060
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1061
    .local v4, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1062
    .local v1, done:Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_8e

    .line 1104
    :cond_c
    :goto_c
    if-eqz v1, :cond_22

    .line 1106
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 1107
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v6, 0x259

    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1109
    :cond_1d
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$500(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1111
    :cond_22
    return-void

    .line 1064
    :pswitch_23
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object v4, v7, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1065
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_32

    move v5, v6

    :cond_32
    iput-boolean v5, v7, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 1068
    const/4 v1, 0x1

    .line 1069
    goto :goto_c

    .line 1071
    :pswitch_36
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_49

    .line 1078
    :cond_49
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    .line 1079
    .local v0, completed:Z
    if-eqz v0, :cond_c

    .line 1080
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->access$300(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5f

    .line 1082
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v5}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_c

    .line 1085
    :cond_5f
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-boolean v5, v7, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1086
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1088
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 1089
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1090
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_71

    .line 1093
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-boolean v6, v5, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1097
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_8b
    const/4 v1, 0x1

    .line 1098
    goto :goto_c

    .line 1062
    nop

    :pswitch_data_8e
    .packed-switch 0x1f4
        :pswitch_23
        :pswitch_36
    .end packed-switch
.end method
