.class Lcom/android/phone/MSimDialerActivity$1;
.super Ljava/lang/Object;
.source "MSimDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 145
    iput-object p1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 147
    const-string v1, "MSimDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key code is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sparse-switch p2, :sswitch_data_64

    .line 167
    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    :sswitch_1d
    return v0

    .line 150
    :sswitch_1e
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-static {v1}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/16 v2, 0x63

    invoke-static {v1, v2}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_1d

    .line 155
    :sswitch_2f
    const-string v1, "MSimDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_1d

    .line 159
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-static {v1}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity$1;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_1d

    .line 148
    :sswitch_data_64
    .sparse-switch
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_2f
        0x54 -> :sswitch_1d
    .end sparse-switch
.end method
