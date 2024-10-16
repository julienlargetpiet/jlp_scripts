from glob import glob
import sys
import os

except_file = sys.argv[1]
cur_path = except_file.split("/")
except_file = cur_path[(len(cur_path) - 1)]

if except_file[0] == "{":
    cur_path = "/".join(cur_path[0:(len(cur_path) - 1)])
    except_file2 = []
    except_file = except_file[1:(len(except_file) - 1)].split(",")
    for i in except_file:
        if i[0] == "*":
            except_file2 += glob(f"{cur_path}/{i}")
        else:
            except_file2.append(i)
    for i in glob(f"{cur_path}/*"):
        if i not in except_file2:
            os.system(f"rm {cur_path}/{i}")
else:
    cur_path = "/".join(cur_path[0:(len(cur_path) - 1)])
    if except_file[0] == "*":
        except_file = glob(f"{cur_path}/{except_file}")
    for i in glob(f"{cur_path}/*"):
        if i not in except_file:
            os.system(f"rm {i}")

