.class Lcom/android/phone/multiwaveview/MultiWaveView$2;
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
    .line 130
    iput-object p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animator"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->ping()V

    .line 133
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$000(Lcom/android/phone/multiwaveview/MultiWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-static {v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$100(Lcom/android/phone/multiwaveview/MultiWaveView;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->access$200(Lcom/android/phone/multiwaveview/MultiWaveView;IFF)V

    .line 134
    return-void
.end method
