.class Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportAllSimContactsThread"
.end annotation


# static fields
.field private static final CURSOR_OFFSET:I = 0x1


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    .line 113
    const-string v0, "ImportAllSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 114
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 152
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 155
    const/4 v0, -0x2

    if-ne p2, v0, :cond_10

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 157
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    :goto_f
    return-void

    .line 159
    :cond_10
    const-string v0, "SimContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 118
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v1, emptyContentValues:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v5}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 122
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v5}, Lcom/android/phone/SimContacts;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, cur:Landroid/database/Cursor;
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 129
    .local v3, mPositionOld:I
    :goto_1a
    iget-boolean v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    if-nez v5, :cond_46

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 134
    .local v2, mPositionCurrent:I
    sub-int v5, v2, v3

    if-ne v6, v5, :cond_40

    .line 135
    move v3, v2

    .line 141
    :goto_2d
    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v5}, Lcom/android/phone/SimContacts;->access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/android/phone/SimContacts;->access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 143
    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v5}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_1a

    .line 137
    :cond_40
    add-int/lit8 v3, v3, 0x1

    .line 138
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2d

    .line 146
    .end local v2           #mPositionCurrent:I
    :cond_46
    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v5}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v5}, Lcom/android/phone/SimContacts;->finish()V

    .line 148
    return-void
.end method
