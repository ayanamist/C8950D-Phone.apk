.class Lcom/android/phone/OutgoingCallBroadcaster$2;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$2;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 457
    invoke-static {}, Lcom/android/phone/PhoneUtils;->smartHangup()V

    .line 458
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->hangupflag:Z

    .line 459
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$2;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    sget-object v1, Lcom/android/phone/OutgoingCallBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;)V

    .line 460
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->hangupflag:Z

    .line 461
    return-void
.end method
