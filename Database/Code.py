import struct
from PIL import Image

def read_record_ETL8B2(f):
    s = f.read(512)
    r = struct.unpack('>2H4s504s', s)
    i1 = Image.frombytes('1', (64, 63), r[3], 'raw')
    return r + (i1,)

filename = 'ETL8B/ETL8B2C1'
id_record = 0
a=51200
while id_record < a:
    try :
        with open(filename, 'r') as f:
            f.seek((id_record + 1) * 512)
            r = read_record_ETL8B2(f)
        print r[0:3], hex(r[1])
        iI = Image.eval(r[-1], lambda x: not x)
        fn = 'ETL8B2C1_{:d}_{:s}.png'.format(id_record, hex(r[1])[-4:])
        iI.save(fn, 'PNG')
        id_record=id_record+1
    except Exception, e:
        id_record=id_record+1

