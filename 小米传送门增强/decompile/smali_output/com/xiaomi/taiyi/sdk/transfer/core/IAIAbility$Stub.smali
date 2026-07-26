.class public abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_api:I = 0x1

.field static final TRANSACTION_bind:I = 0x8

.field static final TRANSACTION_execute:I = 0xd

.field static final TRANSACTION_getMemory:I = 0xa

.field static final TRANSACTION_hasSession:I = 0xb

.field static final TRANSACTION_isAlive:I = 0x6

.field static final TRANSACTION_isInternal:I = 0x7

.field static final TRANSACTION_isLLM:I = 0x5

.field static final TRANSACTION_name:I = 0x2

.field static final TRANSACTION_post:I = 0xe

.field static final TRANSACTION_query:I = 0xc

.field static final TRANSACTION_type:I = 0x4

.field static final TRANSACTION_unbind:I = 0x9

.field static final TRANSACTION_version:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIAbility"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIAbility"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const-string v0, "com.xiaomi.taiyi.sdk.transfer.core.IAIAbility"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_f6

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 128
    :pswitch_1e
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;

    move-result-object p2

    .line 131
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->post(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;)V

    goto/16 :goto_f5

    .line 132
    :pswitch_33
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 133
    invoke-interface {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->execute(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-static {p3, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_f5

    .line 136
    :pswitch_47
    sget-object p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 137
    invoke-interface {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->query(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;

    move-result-object p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-static {p3, p1, v1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_f5

    .line 140
    :pswitch_5b
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->hasSession()Z

    move-result p1

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f5

    .line 143
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-interface {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->getMemory(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;

    move-result-object p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_f5

    .line 147
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    sget-object p4, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p4}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 150
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->unbind(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)I

    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f5

    .line 153
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;

    move-result-object p1

    .line 155
    sget-object p4, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest$CREATOR;

    invoke-static {p2, p4}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;

    .line 156
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->bind(Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)I

    move-result p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f5

    .line 159
    :pswitch_a9
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->isInternal()Z

    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f5

    .line 162
    :pswitch_b4
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->isAlive()Z

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f5

    .line 165
    :pswitch_bf
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->isLLM()Z

    move-result p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f5

    .line 168
    :pswitch_ca
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->type()I

    move-result p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f5

    .line 171
    :pswitch_d5
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->version()J

    move-result-wide p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_f5

    .line 174
    :pswitch_e0
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->name()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f5

    .line 177
    :pswitch_eb
    invoke-interface {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;->api()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_f5
    return v1

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_e0
        :pswitch_d5
        :pswitch_ca
        :pswitch_bf
        :pswitch_b4
        :pswitch_a9
        :pswitch_8e
        :pswitch_77
        :pswitch_67
        :pswitch_5b
        :pswitch_47
        :pswitch_33
        :pswitch_1e
    .end packed-switch
.end method
