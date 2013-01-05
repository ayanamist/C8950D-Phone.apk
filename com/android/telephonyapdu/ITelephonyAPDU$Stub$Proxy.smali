.class Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephonyAPDU.java"

# interfaces
.implements Lcom/android/telephonyapdu/ITelephonyAPDU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/telephonyapdu/ITelephonyAPDU$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 147
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public closeIccLogicalChannel(I)Z
    .registers 8
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 240
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v3, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    .line 247
    .local v2, _result:Z
    :cond_22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    return v2

    .line 247
    .end local v2           #_result:Z
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, "com.android.telephonyapdu.ITelephonyAPDU"

    return-object v0
.end method

.method public getLastError()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 259
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v2

    .line 268
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    return v2

    .line 268
    .end local v2           #_result:I
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 8
    .parameter "AID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    move-result v2

    .line 226
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    return v2

    .line 226
    .end local v2           #_result:I
    :catchall_25
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 192
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_34

    move-result-object v2

    .line 204
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    return-object v2

    .line 204
    .end local v2           #_result:Ljava/lang/String;
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_37

    move-result-object v2

    .line 178
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-object v2

    .line 178
    .end local v2           #_result:Ljava/lang/String;
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 13
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 282
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.telephonyapdu.ITelephonyAPDU"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/android/telephonyapdu/ITelephonyAPDU$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_34

    move-result-object v2

    .line 294
    .local v2, _result:[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    return-object v2

    .line 294
    .end local v2           #_result:[B
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
