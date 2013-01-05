.class Lcom/android/phone/InCallFragment$4;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/android/phone/InCallFragment$4;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$4;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/phone/InCallFragment$4;->this$0:Lcom/android/phone/InCallFragment;

    const-string v1, "handle POST_DIAL_CANCELED!"

    invoke-static {v0, v1}, Lcom/android/phone/InCallFragment;->access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/phone/InCallFragment$4;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    .line 1499
    iget-object v0, p0, Lcom/android/phone/InCallFragment$4;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v0}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1500
    return-void
.end method
