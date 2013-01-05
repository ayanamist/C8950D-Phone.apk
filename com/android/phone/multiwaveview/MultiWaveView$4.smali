.class Lcom/android/phone/multiwaveview/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$400(Lcom/android/phone/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 148
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$400(Lcom/android/phone/multiwaveview/MultiWaveView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$500(Lcom/android/phone/multiwaveview/MultiWaveView;I)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$402(Lcom/android/phone/multiwaveview/MultiWaveView;I)I

    .line 150
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$600(Lcom/android/phone/multiwaveview/MultiWaveView;Z)V

    .line 152
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$702(Lcom/android/phone/multiwaveview/MultiWaveView;Z)Z

    .line 153
    return-void
.end method
