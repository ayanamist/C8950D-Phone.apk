.class public Lcom/android/phone/IccPanel;
.super Landroid/app/Dialog;
.source "IccPanel.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PhoneApp"


# instance fields
.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    const v0, 0x7f0e0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 5
    .parameter "isDelay"

    .prologue
    .line 49
    const/4 v1, 0x1

    if-ne v1, p1, :cond_8

    .line 52
    const-wide/16 v1, 0xbb8

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_c

    .line 58
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/IccPanel;->dismiss()V

    .line 59
    return-void

    .line 53
    :catch_c
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/IccPanel;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 65
    .local v1, winP:Landroid/view/Window;
    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 66
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 68
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 89
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 90
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 93
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/IccPanel;->requestWindowFeature(I)Z

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 99
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 100
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 105
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 106
    return-void
.end method
