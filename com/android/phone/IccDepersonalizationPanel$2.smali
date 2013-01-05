.class Lcom/android/phone/IccDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0xbb8

    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_25

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .local v0, res:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_26

    .line 96
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const-string v2, "De-Personalization request failure."

    invoke-static {v1, v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$100(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$200(Lcom/android/phone/IccDepersonalizationPanel;I)V

    .line 98
    new-instance v1, Lcom/android/phone/IccDepersonalizationPanel$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IccDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/IccDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    .end local v0           #res:Landroid/os/AsyncResult;
    :cond_25
    :goto_25
    return-void

    .line 106
    .restart local v0       #res:Landroid/os/AsyncResult;
    :cond_26
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const-string v2, "De-Personalization success."

    invoke-static {v1, v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$100(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$200(Lcom/android/phone/IccDepersonalizationPanel;I)V

    .line 108
    new-instance v1, Lcom/android/phone/IccDepersonalizationPanel$2$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IccDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/IccDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25
.end method
