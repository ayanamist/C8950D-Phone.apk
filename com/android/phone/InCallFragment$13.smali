.class Lcom/android/phone/InCallFragment$13;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3375
    iput-object p1, p0, Lcom/android/phone/InCallFragment$13;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$13;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/android/phone/InCallFragment$13;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v1, p0, Lcom/android/phone/InCallFragment$13;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    .line 3378
    return-void
.end method
