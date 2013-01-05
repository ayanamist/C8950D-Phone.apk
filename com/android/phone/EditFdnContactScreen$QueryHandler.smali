.class public Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    .line 522
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 523
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 546
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 534
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-eqz p3, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v2, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    .line 535
    return-void

    :cond_f
    move v0, v1

    .line 534
    goto :goto_b
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 527
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 541
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-lez p3, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v2, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    .line 542
    return-void

    :cond_f
    move v0, v1

    .line 541
    goto :goto_b
.end method
