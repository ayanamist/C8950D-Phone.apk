.class Lcom/android/phone/InCallFragment$5;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1482
    iput-object p1, p0, Lcom/android/phone/InCallFragment$5;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$5;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1484
    iget-object v1, p0, Lcom/android/phone/InCallFragment$5;->this$0:Lcom/android/phone/InCallFragment;

    const-string v2, "handle WILD_PROMPT_CHAR_ENTERED, proceed..."

    invoke-static {v1, v2}, Lcom/android/phone/InCallFragment;->access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, replacement:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InCallFragment$5;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->access$600(Lcom/android/phone/InCallFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1487
    iget-object v1, p0, Lcom/android/phone/InCallFragment$5;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->access$600(Lcom/android/phone/InCallFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1488
    iget-object v1, p0, Lcom/android/phone/InCallFragment$5;->this$0:Lcom/android/phone/InCallFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/InCallFragment;->access$602(Lcom/android/phone/InCallFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1490
    :cond_24
    iget-object v1, p0, Lcom/android/phone/InCallFragment$5;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWildChar(Ljava/lang/String;)V

    .line 1491
    iget-object v1, p0, Lcom/android/phone/InCallFragment$5;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1492
    return-void
.end method
