.class public Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    .line 224
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    if-lez p3, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-static {v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 242
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 233
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 229
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 236
    return-void
.end method
