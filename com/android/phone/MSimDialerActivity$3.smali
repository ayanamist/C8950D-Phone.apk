.class Lcom/android/phone/MSimDialerActivity$3;
.super Ljava/lang/Object;
.source "MSimDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimDialerActivity;->launchMSDialer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimDialerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-static {v0}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 213
    :goto_10
    return-void

    .line 207
    :pswitch_11
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_10

    .line 210
    :pswitch_18
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_10

    .line 205
    nop

    :pswitch_data_20
    .packed-switch 0x7f07003c
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method
