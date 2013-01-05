.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "phoneNumber"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 221
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 222
    :cond_23
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p3, v4, :cond_4c

    .line 229
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/phone/RespondViaSmsManager;->access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    .line 275
    :goto_38
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v4}, Lcom/android/phone/RespondViaSmsManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 281
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v4}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 284
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v4}, Lcom/android/phone/RespondViaSmsManager;->dismissCallScreen()V

    .line 287
    return-void

    .line 232
    :cond_4c
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/android/phone/RespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v4}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0c02b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, formatString:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, confirmationMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v4}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_38
.end method
